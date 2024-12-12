cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

# Set C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Create the calculator library
add_library(calculator STATIC
    calculator.cpp
    calculator.h
)

# Create the executable
add_executable(calc_program main.cpp)

# Link the library to the executable
target_link_libraries(calc_program PRIVATE calculator)