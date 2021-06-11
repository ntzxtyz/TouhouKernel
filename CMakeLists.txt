cmake_minimum_required(VERSION 3.19)
project(TouhouKernel)

enable_language(C ASM)
set(CMAKE_CXX_STANDARD 20)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build)
set(CMAKE_ASM_FLAGS "-Wall -m64 -nostdlib -fno-stack-limit -fno-builtin -mcmodel=large")
set(CMAKE_CXX_FLAGS "-Wall -m64 -nostdlib -fno-stack-limit -fno-builtin -mcmodel=large")
set(CMAKE_EXE_LINKER_FLAGS "-T ${PROJECT_SOURCE_DIR}/kernel.lds")
include_directories(${PROJECT_SOURCE_DIR})

add_executable(kernel main.cpp)
