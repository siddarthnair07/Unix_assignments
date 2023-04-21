#!/bin/bash

#Script to accept two filenames and check if both $
#If second file exists then append the content of $

function check_regular_file {
    local __file=$1
    if [[ ! -e "$__file" ]] || [[ ! -f "$__file" ]]; then
        echo "The entered file: $__file doesn't exists or is not a regular file, Exiting now"
        exit 1
    fi
}


function append_files {
    local __file1=$1
    local __file2=$2
    cat "$__file1" >> "$__file2"
}

echo "Enter the first file: "
read __file1
check_regular_file "$__file1"

echo "Enter the second file: "
read __file2
check_regular_file "$__file2"

echo "Now appending contents for $__file1 into $__file2"
append_files "$__file1" "$__file2"