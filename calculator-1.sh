#!/bin/bash

# Calculator
function check_parameters {
         if [[ -z "$__num1" ]]; then
            echo "First number is not specified"
            exit 1
        elif [[ -z "$__num2" ]]; then
            echo "Second number is not specified"
            exit 1
         else
             echo "Numbers are: "$1 $2
        fi
}

echo "Enter first number: "
read __num1

echo "Enter second number: "
read __num2

check_parameters  "$__num1" "$__num2"

function addition {
    local __num1=$1
    local __num2=$2

    addition=$(echo "scale=2; $__num1+$__num2" | bc)
    echo "result: "$addition
}

function subtraction {
    local __num1=$1
    local __num2=$2
    subtraction=$(echo "scale=2; $__num1-$__num2" | bc)
    echo "result: "$subtraction
}

function multiplication {
    local __num1=$1
    local __num2=$2
    multiplication=$(echo "scale=2; $__num1*$__num2" | bc)
    echo "result: "$multiplication
}

function division {
    local __num1=$1
    local __num2=$2
    if [[ $__num2 == 0 ]];then
	echo "Division by zero is not allowed"
	exit 1
    else    
        division=$(echo "scale=2; $__num1/$__num2" | bc)
        echo "result is: "$division
    fi
}

echo "Enter your choice: "
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read choices

case $choices in
         "1" )
           addition "$__num1" "$__num2"
         ;;
        "2" )
           subtraction "$__num1" "$__num2"
         ;;
        "3" )
           multiplication "$__num1" "$__num2"
         ;;
        "4" )
           division "$__num1" "$__num2"
         ;;
        * )
           echo "Invalid output, please enter valid choice"
         ;;
esac