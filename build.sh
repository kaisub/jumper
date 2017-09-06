#!/bin/bash

# variables
let step_no=0

# function
function printAndIter {
    echo
    let step_no=step_no+1
    echo $step_no$1
}

# ******************* #
# main body starts here
# ******************* #

# welcome text
echo "-- I'll make ../jumper-build and create binary there --"

# do the job from here
printAndIter ". --> Im starting here:"
pwd

cd ../
mkdir -p jumper-build
cd jumper-build
printAndIter ". --> now I'm here: "
pwd

printAndIter ". --> generating makefile:"
cmake -G "Unix Makefiles" ../jumper

printAndIter ". --> building binary:"
make

printAndIter ". --> starting built binary:"

echo
./jumper
