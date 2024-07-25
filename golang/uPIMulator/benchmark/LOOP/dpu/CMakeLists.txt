set(CMAKE_C_COMPILER "/root/upmem-2023.2.0-Linux-x86_64/bin/dpu-upmem-dpurte-clang")
set(CMAKE_C_FLAGS "-S -DDISABLE_MIGRATION")

file(GLOB_RECURSE SRCS *.c)

add_executable(LOOP_device ${SRCS})
