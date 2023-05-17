cmake_minimum_required(VERSION 3.20)  # CMake version check
project(nora)                         # Create project "nora"
set(CMAKE_CXX_STANDARD 23)            # Enable c++23 standard
set(CMAKE_POLICY_DEFAULT_CMP0135 NEW) # Enable new policy for CMP0135
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

# Add main.cpp file of project root directory as source file
file( GLOB SOURCE_FILES
  "*.hpp"
)

# Add output directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY /nora/bin)

# Add executable target with source files listed in SOURCE_FILES variable
add_executable(nora ${SOURCE_FILES} "main.cpp")

# Testing
include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/heads/main.zip
)
FetchContent_MakeAvailable(googletest)
enable_testing()

include(GoogleTest)
 
file(GLOB TEST_FILES
  "test/*.cc"
)

add_executable(
  hello_test
  ${SOURCE_FILES}
  ${TEST_FILES}
)

target_link_libraries(
  hello_test
  gtest
  gtest_main
)

gtest_discover_tests(hello_test)


# Benchmarking
file(GLOB BENCHMARK_FILES
  "benchmark/*.cc"
)

find_package(benchmark REQUIRED)

add_executable(
  benchmark
  ${SOURCE_FILES}
  ${BENCHMARK_FILES}
)

target_link_libraries(
  benchmark
  benchmark::benchmark
)