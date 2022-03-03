cmake_minimum_required(VERSION 3.0.2)
project(ClientSerena)

file(GLOB CPPS "*.cpp")
add_library(${PROJECT_NAME} SHARED ${CPPS} ${CMAKE_THREAD_LIBS_INIT})
#add_executable(${PROJECT_NAME} ${CPPS} ${CMAKE_THREAD_LIBS_INIT})
