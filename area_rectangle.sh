#!/bin/bash

#Script to calculate the area of rectangle.
#It should take the value from the command line

__length=$1
__breadth=$2

function calculate_area {
     local __length=$1
     local __breadth=$2
     area=$(echo "scale=4; $__length*$__breadth" | bc)
     echo "Area of rectangle is: "$area

}

if [[  -z "$__length" ]]; then
   echo "Length not specified, specify as first parameter"
elif [[ -z "$__breadth" ]]; then
   echo "Breadth not specified, specify as second parameter"
else
   calculate_area "$__length" "$__breadth"
fi