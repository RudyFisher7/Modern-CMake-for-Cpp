cmake_minimum_required(VERSION 3.20.0)
project(Features C CXX)

include(CheckIPOSupported)

check_ipo_supported(RESULT ipo_supported)

message(STATUS "${ipo_supported}")

list(FIND CMAKE_CXX_COMPILE_FEATURES
          cxx_std_23 result)

message(STATUS "features = ${CMAKE_CXX_COMPILE_FEATURES}")
if(result EQUAL -1)
  message(FATAL_ERROR "I really need variable templates.")
endif()

message(STATUS "endianness ${CMAKE_CXX_BYTE_ORDER} vs ${CMAKE_C_BYTE_ORDER}")

add_executable(Features main.cpp)
