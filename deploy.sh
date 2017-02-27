#!/bin/bash

FILES="CMakeLists.txt
CMakeCache.txt  
Makefile
CMakeFiles
cmake_install.cmake
CMake
"

cp -r toolchain/CMakeLists.txt .
cp -r toolchain/CMake . 

# do some stuff
cmake .
make 
# 

for f in $FILES
do

	rm -r $f
done