cmake_minimum_required(VERSION 3.5)

project(HelloWorld)


INCLUDE_DIRECTORIES("C:/Users/Administrator/Desktop/vmp/vcpkg/installed/x64-windows/include")
LINK_DIRECTORIES("C:/Users/Administrator/Desktop/vmp/vcpkg/installed/x64-windows/lib")

add_executable(HelloWorld main.cpp)

TARGET_LINK_LIBRARIES(HelloWorld
  unicorn capstone triton
)