if(CMAKE_GENERATOR MATCHES "Visual Studio")
    message(FATAL_ERROR "Visual Studio generator not supported, use: cmake -G Ninja")
endif()

set(CMAKE_SYSTEM_NAME "Linux")
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR "x86_64")
set(CMAKE_C_COMPILER "zig" cc -target x86_64-linux-musl)
set(CMAKE_CXX_COMPILER "zig" c++ -target x86_64-linux-musl)

if(WIN32)
    set(SCRIPT_SUFFIX ".cmd")
else()
    set(SCRIPT_SUFFIX ".sh")
endif()

set(CMAKE_AR "${CMAKE_CURRENT_LIST_DIR}/zigbuild/zig-ar${SCRIPT_SUFFIX}")
set(CMAKE_RANLIB "${CMAKE_CURRENT_LIST_DIR}/zigbuild/zig-ranlib${SCRIPT_SUFFIX}")