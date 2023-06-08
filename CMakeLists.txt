cmake_minimum_required(VERSION 3.14 FATAL_ERROR)
project(template)

include(cmake/CPM.cmake)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
add_executable(${PROJECT_NAME} main.cpp)

########################### fmt #############################
CPMAddPackage(
    NAME fmt
    GIT_REPOSITORY "https://github.com/fmtlib/fmt.git"
    GIT_TAG "9.1.0"
    OPTIONS ""
)
target_link_libraries(${PROJECT_NAME} PRIVATE fmt::fmt)


########################## Boost ############################
CPMAddPackage(
    NAME Boost
    GIT_REPOSITORY "https://github.com/boostorg/boost.git"
    GIT_TAG "boost-1.82.0"
    OPTIONS ""
)
target_link_libraries(${PROJECT_NAME} PRIVATE
    Boost::array Boost::chrono Boost::asio Boost::filesystem
)