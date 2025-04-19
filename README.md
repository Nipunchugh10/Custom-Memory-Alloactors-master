# Custom Memory Allocator

A high-performance C++ memory allocation library providing various allocation strategies for different use cases.

## Overview

This project implements multiple memory allocation strategies to provide alternatives to the standard C++ allocator. Custom memory allocators are essential for performance-critical applications where memory allocation patterns are predictable, or where specialized allocation strategies can provide significant performance improvements.

## Allocation Strategies

The library provides the following allocation strategies:

### Linear Allocator
Fast allocator with minimal overhead. Memory can only be freed all at once using the `Reset()` method. Ideal for temporary allocations with short lifetimes.

### Stack Allocator
Memory is allocated in a stack-like fashion. Only the most recently allocated memory block can be freed. Good for nested function scopes or temporary allocations with clear hierarchical structure.

### Pool Allocator
Pre-allocates fixed-size memory blocks. Very fast allocation and deallocation for objects of the same size. Perfect for game entities, particle systems, or any uniform object collection.

### Free List Allocator
Uses a doubly-linked list to track free memory blocks, supporting variable-sized allocations. Provides good performance for general-purpose memory allocation with efficient memory reuse.

### Red-Black Tree Free List Allocator
An optimization of the free list allocator using a red-black tree for faster lookups. Delivers logarithmic time complexity for memory allocation operations, making it suitable for applications with complex allocation patterns.

## Data Structures

The project includes several supporting data structures:

- **LinkedList**: Simple singly-linked list implementation
- **DoublyLinkedList**: Doubly-linked list supporting bidirectional traversal
- **RBTree**: Self-balancing red-black tree implementation for fast lookups

## Requirements

- **C++23 ONLY**
- CMake 3.10 or higher
- MinGW (for Windows) or GCC/Clang (for Linux/macOS)

## Building the Project

```bash
# Clone the repository
git clone https://github.com/Nipunchugh10/Custom-Memory-Allocator-in-C-.git
cd custom-memory-allocator

# Build the project
cmake -B build -G "MinGW Makefiles"  # Or use "Unix Makefiles" on Linux/macOS
cmake --build build

# Run the example
./bin/CustomMemoryAllocator.exe
```

Alternatively, you can use the provided PowerShell script:

```powershell
.\Run.ps1
```

## Usage Examples

### Linear Allocator

```cpp
#include "LinearAllocator.h"

// Create a 1024-byte linear allocator
ASL::LinearAllocator allocator(1024);

// Allocate 100 bytes with 8-byte alignment
void* ptr = allocator.Allocate(100, 8);

// Use the memory...

// Reset the allocator (frees all allocated memory)
allocator.Reset();
```

### Pool Allocator

```cpp
#include "PoolAllocator.h"

// Create a pool allocator with 1024 total bytes and 64-byte chunks
ASL::PoolAllocator poolAllocator(1024, 64);

// Allocate a 64-byte chunk with default alignment
void* ptr = poolAllocator.Allocate(60, 1);

// Use the memory...

// Free the allocated memory
poolAllocator.Free(ptr);
```

### Free List Allocator

```cpp
#include "FreeListAllocator.h"

// Create a 2048-byte free list allocator
ASL::FreeListAllocator freeListAllocator(2048);

// Allocate memory with 16-byte alignment
void* ptr = freeListAllocator.Allocate(200, 16);

// Use the memory...

// Free the allocated memory
freeListAllocator.Free(ptr);
```

### Red-Black Tree Free List Allocator

```cpp
#include "RBFreeListAllocator.h"

// Create a 2048-byte red-black tree free list allocator
ASL::RBFreeListAllocator rbAllocator(2048);

// Allocate 100 bytes
void* ptr = rbAllocator.Allocate(100);

// Use the memory...

// Free the allocated memory (requires knowing the size)
rbAllocator.Free(ptr, 100);
```

## Architecture

The project follows a clean object-oriented design with the following key components:

- **Allocator**: Base abstract class defining the interface for all allocators
- **Implementation Classes**: Concrete allocator implementations for different strategies
- **Memory Management**: Each allocator efficiently manages memory blocks with headers/metadata
- **Data Structures**: Custom containers to support efficient memory tracking and management

## Performance Considerations

- **LinearAllocator**: Fastest allocation, but no individual deallocation
- **PoolAllocator**: Very fast for uniform object sizes
- **FreeListAllocator**: Good general-purpose performance with memory reuse
- **RBFreeListAllocator**: Best for complex allocation patterns with varying sizes

## License

[MIT License](LICENSE)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
