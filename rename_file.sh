#!/bin/bash

#Script to rename file having extension sh to exe

echo "Enter file with sh extension: "
read file

if [[ $file == *.sh ]]; then
  if [[ -e $file ]]; then
    if [[ -f $file ]]; then
        echo "Now changing the extension of file"
        mv "$file" "${file%sh}exe"
    else
       echo "This is not a regular file"
    fi
  else
     echo "This file do no exists"
  fi
else
   echo "I told you to provide file with sh extension, Exiting the program"
   exit 1
fi