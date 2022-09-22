#cmake_minimum_required(VERSION 3.23)
#project(rpi_vision)
#
#set(CMAKE_CXX_STANDARD 14)
#
#add_executable(rpi_vision main.cpp)

#cmake_minimum_required(VERSION 2.8.12)
cmake_minimum_required(VERSION 3.23)
project(MD5Encrypter)

add_definitions("-std=c++11")

include(test/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(md5 main.cpp)
target_link_libraries(md5 ${CONAN_LIBS})