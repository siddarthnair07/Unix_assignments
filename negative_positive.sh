#!/bin/bash

#Script to take two numbers from command line
#Show result of  dividing  small  number  with  bigger  number. 
#Also note that it should not accept zero or negative number.
#If user enter zero or negative number then,
#it should prompt to input correct number after displaying proper message.


num1=$1
num2=$2

if (( "$num1" > 0 )) && (( "$num2" > 0 )); then
       if (( "$num1" > "$num2" )); then
          result=$(echo "scale=2; $num1/$num2" | bc)
          echo $result
       elif (("$num1" < "$num2" )); then
          result=$(echo "scale=2; $num2/$num1" | bc)
          echo $result
       else
           echo "Both the numbers are equal"
       fi
else
    echo "One or both the numbers are either equal or less than zero"
fi