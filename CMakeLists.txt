# Specify the minimum version for CMake
cmake_minimum_required(VERSION 2.8)
# select C++ version
add_definitions("-std=c++11") # -fno-elide-constructors")

# get project name from the folder name and use it as a project id
get_filename_component(ProjectId ${CMAKE_SOURCE_DIR} NAME)
string(REPLACE " " "_" ProjectId ${ProjectId})
project(${ProjectId})                                           # create project

aux_source_directory(. SRC_MAIN_LIST)
aux_source_directory(src SRC_LIST)
aux_source_directory(common/src COMMON_SRC_LIST)
#file(GLOB HEADERS inc/*.h)
#file(GLOB_RECURSE COMMON common/inc/*.h common/src/*.cpp)

# The following folders will be included
include_directories("${PROJECT_SOURCE_DIR}" inc common/inc)

# binary creation:
# Add executable target with source files listed in SRC_LIST variable
add_executable(${PROJECT_NAME} ${SRC_MAIN_LIST} ${SRC_LIST} ${COMMON_SRC_LIST})

