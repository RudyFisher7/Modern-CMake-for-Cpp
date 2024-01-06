cmake_minimum_required(VERSION 3.20.0)
project(PropagatedProperties CXX)

add_library(source1 empty.cpp)
set_property(TARGET source1 PROPERTY INTERFACE_LIB_VERSION 4)
set_property(TARGET source1 APPEND PROPERTY
 COMPATIBLE_INTERFACE_NUMBER_MAX LIB_VERSION
)

add_library(source2 empty.cpp)
set_property(TARGET source2 PROPERTY INTERFACE_LIB_VERSION 5)

add_library(destination empty.cpp)
target_link_libraries(destination source1 source2)
