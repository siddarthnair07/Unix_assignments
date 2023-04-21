#!/bin/bash

#Calculator

echo "Enter first number: "
read __num1

echo "Enter second number: "
read __num2

function addition {
    addition=$(echo "scale=2; $__num1+$__num2" | bc)
    echo "result: "$addition
}

function subtraction {
    subtraction=$(echo "scale=2; $__num1-$__num2" | bc)
    echo "result: "$subtraction
}

function multiplication {
    multiplication=$(echo "scale=2; $__num1*$__num2" | bc)
    echo "result: "$multiplication
}

function division {
    if [[ $__num2 == 0 ]]; then
        echo "Division by zero is not allowed"
	exit 1
    else
	division=$(echo "scale=2; $__num1/$__num2" | bc)
       echo "result is: "$division
    fi
}


if [[ -z "$__num1" ]]; then
    echo "First number is not specified"
    exit 1
elif [[ -z "$__num2" ]]; then
    echo "Second number is not specified"
    exit 1
else
    echo "Enter your choice: "
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read choices
fi

if [[ $choices == 1 ]]; then
    addition
elif [[ $choices == 2 ]]; then
    subtraction
elif [[ $choices == 3 ]]; then
    multiplication
elif [[ $choices == 4 ]]; then
    division
else
    echo "Invalid output, please enter valid choice"
fi