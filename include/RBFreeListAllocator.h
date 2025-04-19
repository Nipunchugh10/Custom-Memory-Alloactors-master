#ifndef MEMORYALLOCATOR_RBFREELISTALLOCATOR_H
#define MEMORYALLOCATOR_RBFREELISTALLOCATOR_H

#include "Allocator.h"
#include "RBTree.h"

namespace ASL {

    class RBFreeListAllocator : public Allocator {
    private:
        struct Header {
            int chunkSize;
            unsigned int padding;

            bool operator<(const Header& rhs) const {
                return chunkSize < rhs.chunkSize;
            }

            bool operator==(const Header& rhs) const {
                return chunkSize == rhs.chunkSize;
            }
        };

    public:
        explicit RBFreeListAllocator(unsigned int totalSize);
        ~RBFreeListAllocator() override;

        void* Allocate(int allocationSize);
        void Free(void* address, int sizeOfObject);

        RBFreeListAllocator(RBFreeListAllocator const& rhs) = delete;
        RBFreeListAllocator(RBFreeListAllocator const&& rhs) = delete;

    private:
        void* Allocate(int allocationSize, int alignment) override;
        void Free(void* address) override;

    private:
        void* bufferStartPtr;

    public:
        RBTree<Header> freeList;
        RBTree<Header> allocatedList;
    };

}

#endif // MEMORYALLOCATOR_RBFREELISTALLOCATOR_H
