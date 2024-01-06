cmake_minimum_required(VERSION 3.20.0)

set(MyString1 "Text1")
set([[My String2]] "Text2")
set("My String 3" "Text3")
message(${MyString1})
message(${My\ String2})
message(${My\ String\ 3})

set(MyInner "Hello")
set(MyOuter "My")
message("${${MyOuter}Inner} World")

message(${CMAKE_ARGC})
message(${CMAKE_ARGV0})
message(${CMAKE_ARGV1})
message(${CMAKE_ARGV2})

if (${CMAKE_ARGC} GREATER 3)
    message(${CMAKE_ARGV3})
else ()
    message("no --token passed in.")
endif ()
