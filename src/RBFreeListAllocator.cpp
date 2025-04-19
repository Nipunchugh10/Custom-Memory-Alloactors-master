#include "RBFreeListAllocator.h"
#include <cstdlib>
#include <iostream>

ASL::RBFreeListAllocator::RBFreeListAllocator(unsigned int totalSize) : Allocator(totalSize) {
    assert(totalSize > sizeof(Node<Header>) && "Total Size smaller than header");
    bufferStartPtr = std::malloc(totalSize);
    auto* node = new(bufferStartPtr) Node<Header>{{static_cast<int>(totalSize), 0}, RED, nullptr, nullptr, nullptr};
    freeList.InsertNode(node);
}

ASL::RBFreeListAllocator::~RBFreeListAllocator() {
    free(bufferStartPtr);
}

void* ASL::RBFreeListAllocator::Allocate(int allocationSize) {
    return Allocate(allocationSize, 1);
}

void* ASL::RBFreeListAllocator::Allocate(int allocationSize, int alignment) {
    void* alignedPtr = nullptr;

    auto* node = freeList.FindNode([allocationSize, alignment, &alignedPtr](Node<Header>* currentNode) {
        Header& header = currentNode->data;
        int neededSize = allocationSize + (int)sizeof(Node<Header>);

        if (header.chunkSize >= neededSize) {
            if (((header.chunkSize - neededSize) < (sizeof(Node<Header>) + 1)) && (header.chunkSize - neededSize != 0)) {
                return false;
            }

            void* chunkPtrStart = (void*)((uintptr_t(currentNode)) + sizeof(Node<Header>));
            size_t trueChunkSize = header.chunkSize - sizeof(Node<Header>);

            void* adjustedPointer = std::align(alignment, allocationSize, chunkPtrStart, trueChunkSize);
            if (adjustedPointer != nullptr) {
                alignedPtr = adjustedPointer;
                return true;
            }
        }

        return false;
    });

    if (node != nullptr) {
        freeList.RemoveNode(node);

        auto oldHeaderSize = node->data.chunkSize;
        unsigned int padding = static_cast<int>(uintptr_t(alignedPtr) - uintptr_t(node)) - sizeof(Node<Header>);
        unsigned allocatedBlockSize = padding + allocationSize + sizeof(Node<Header>);

        node->data.chunkSize = static_cast<int>(allocatedBlockSize);
        node->data.padding = padding;

        if (oldHeaderSize != allocatedBlockSize) {
            void* freeNodeStartPtr = (void*)((uintptr_t(node)) + allocatedBlockSize);
            unsigned int chunkSize = oldHeaderSize - allocatedBlockSize;
            auto* freeNode = new(freeNodeStartPtr) Node<Header>{{static_cast<int>(chunkSize), 0}, RED, nullptr, nullptr, nullptr};
            freeList.InsertNode(freeNode);
        }

        allocatedList.InsertNode(node);
    }

    return alignedPtr;
}

void ASL::RBFreeListAllocator::Free(void* address) {
    assert(false && "Use the overload with size of object.");
}

void ASL::RBFreeListAllocator::Free(void* address, int sizeOfObject) {
    int blockSize = static_cast<int>(sizeof(Node<Header>)) + sizeOfObject;

    auto* freeNode = allocatedList.FindNode([address, blockSize](Node<Header>* currentNode) {
        auto& header = currentNode->data;

        if (header.chunkSize != blockSize) return false;

        void* objAddr = (void*)((uintptr_t(currentNode)) + sizeof(Node<Header>) + header.padding);
        return objAddr == address;
    });

    if (freeNode != nullptr) {
        allocatedList.RemoveNode(freeNode);
        freeList.InsertNode(freeNode);
    }
}
