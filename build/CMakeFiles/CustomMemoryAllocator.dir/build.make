# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build

# Include any dependencies generated for this target.
include CMakeFiles/CustomMemoryAllocator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CustomMemoryAllocator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CustomMemoryAllocator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CustomMemoryAllocator.dir/flags.make

CMakeFiles/CustomMemoryAllocator.dir/codegen:
.PHONY : CMakeFiles/CustomMemoryAllocator.dir/codegen

CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/flags.make
CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/includes_CXX.rsp
CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj: C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/src/FreeListAllocator.cpp
CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj -MF CMakeFiles\CustomMemoryAllocator.dir\src\FreeListAllocator.cpp.obj.d -o CMakeFiles\CustomMemoryAllocator.dir\src\FreeListAllocator.cpp.obj -c C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\FreeListAllocator.cpp

CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.i"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\FreeListAllocator.cpp > CMakeFiles\CustomMemoryAllocator.dir\src\FreeListAllocator.cpp.i

CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.s"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\FreeListAllocator.cpp -o CMakeFiles\CustomMemoryAllocator.dir\src\FreeListAllocator.cpp.s

CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/flags.make
CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/includes_CXX.rsp
CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj: C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/src/LinearAllocator.cpp
CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj -MF CMakeFiles\CustomMemoryAllocator.dir\src\LinearAllocator.cpp.obj.d -o CMakeFiles\CustomMemoryAllocator.dir\src\LinearAllocator.cpp.obj -c C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\LinearAllocator.cpp

CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.i"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\LinearAllocator.cpp > CMakeFiles\CustomMemoryAllocator.dir\src\LinearAllocator.cpp.i

CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.s"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\LinearAllocator.cpp -o CMakeFiles\CustomMemoryAllocator.dir\src\LinearAllocator.cpp.s

CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/flags.make
CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/includes_CXX.rsp
CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj: C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/src/PoolAllocator.cpp
CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj -MF CMakeFiles\CustomMemoryAllocator.dir\src\PoolAllocator.cpp.obj.d -o CMakeFiles\CustomMemoryAllocator.dir\src\PoolAllocator.cpp.obj -c C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\PoolAllocator.cpp

CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.i"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\PoolAllocator.cpp > CMakeFiles\CustomMemoryAllocator.dir\src\PoolAllocator.cpp.i

CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.s"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\PoolAllocator.cpp -o CMakeFiles\CustomMemoryAllocator.dir\src\PoolAllocator.cpp.s

CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/flags.make
CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/includes_CXX.rsp
CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj: C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/src/RBFreeListAllocator.cpp
CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj -MF CMakeFiles\CustomMemoryAllocator.dir\src\RBFreeListAllocator.cpp.obj.d -o CMakeFiles\CustomMemoryAllocator.dir\src\RBFreeListAllocator.cpp.obj -c C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\RBFreeListAllocator.cpp

CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.i"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\RBFreeListAllocator.cpp > CMakeFiles\CustomMemoryAllocator.dir\src\RBFreeListAllocator.cpp.i

CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.s"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\RBFreeListAllocator.cpp -o CMakeFiles\CustomMemoryAllocator.dir\src\RBFreeListAllocator.cpp.s

CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/flags.make
CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/includes_CXX.rsp
CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj: C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/src/StackAllocator.cpp
CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj -MF CMakeFiles\CustomMemoryAllocator.dir\src\StackAllocator.cpp.obj.d -o CMakeFiles\CustomMemoryAllocator.dir\src\StackAllocator.cpp.obj -c C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\StackAllocator.cpp

CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.i"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\StackAllocator.cpp > CMakeFiles\CustomMemoryAllocator.dir\src\StackAllocator.cpp.i

CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.s"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\StackAllocator.cpp -o CMakeFiles\CustomMemoryAllocator.dir\src\StackAllocator.cpp.s

CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/flags.make
CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/includes_CXX.rsp
CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj: C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/src/main.cpp
CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj: CMakeFiles/CustomMemoryAllocator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj -MF CMakeFiles\CustomMemoryAllocator.dir\src\main.cpp.obj.d -o CMakeFiles\CustomMemoryAllocator.dir\src\main.cpp.obj -c C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\main.cpp

CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.i"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\main.cpp > CMakeFiles\CustomMemoryAllocator.dir\src\main.cpp.i

CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.s"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\src\main.cpp -o CMakeFiles\CustomMemoryAllocator.dir\src\main.cpp.s

# Object files for target CustomMemoryAllocator
CustomMemoryAllocator_OBJECTS = \
"CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj" \
"CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj" \
"CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj" \
"CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj" \
"CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj" \
"CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj"

# External object files for target CustomMemoryAllocator
CustomMemoryAllocator_EXTERNAL_OBJECTS =

C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/src/FreeListAllocator.cpp.obj
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/src/LinearAllocator.cpp.obj
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/src/PoolAllocator.cpp.obj
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/src/RBFreeListAllocator.cpp.obj
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/src/StackAllocator.cpp.obj
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/src/main.cpp.obj
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/build.make
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/linkLibs.rsp
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/objects1.rsp
C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe: CMakeFiles/CustomMemoryAllocator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\bin\CustomMemoryAllocator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CustomMemoryAllocator.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CustomMemoryAllocator.dir/build: C:/Users/Lenovo/Downloads/Custom-Memory-Alloactors-master/bin/CustomMemoryAllocator.exe
.PHONY : CMakeFiles/CustomMemoryAllocator.dir/build

CMakeFiles/CustomMemoryAllocator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CustomMemoryAllocator.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CustomMemoryAllocator.dir/clean

CMakeFiles/CustomMemoryAllocator.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build C:\Users\Lenovo\Downloads\Custom-Memory-Alloactors-master\build\CMakeFiles\CustomMemoryAllocator.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/CustomMemoryAllocator.dir/depend

