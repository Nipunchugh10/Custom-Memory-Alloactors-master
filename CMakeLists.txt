cmake_minimum_required(VERSION 3.10)

# Project Name
project(CustomMemoryAllocator)

# C++ standard
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Paths
set(SRC_DIR "${PROJECT_SOURCE_DIR}/src")
set(INCLUDE_DIR "${PROJECT_SOURCE_DIR}/include")

# Source files
file(GLOB_RECURSE SOURCES "${SRC_DIR}/*.cpp")

# Headers (optional, for IDE support)
file(GLOB_RECURSE HEADERS "${INCLUDE_DIR}/*.h")

# Executable
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

# Include directory
target_include_directories(${PROJECT_NAME} PRIVATE ${INCLUDE_DIR})

# Compile options comment out for warnings
target_compile_options(${PROJECT_NAME} PRIVATE
    -Wall -Wextra            # Enable common warnings
    -Wno-unused-parameter    # Suppress specific ones
    -Wno-sign-compare
    -Wno-unused-but-set-variable
)


# Output directory
set_target_properties(${PROJECT_NAME} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin"
)
