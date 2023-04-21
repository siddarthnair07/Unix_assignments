#!/bin/bash

#Script to input a file name and display rights

echo "Enter the file name: "
read file

if [[ -e "$file" ]]; then
   if [[ -f "$file" ]]; then
     stat --format "%A" $file
#"%A" Access rights in human readable form
   else
      echo "This is not a regular file"
   fi
else
   echo "This file do not exists"
fi