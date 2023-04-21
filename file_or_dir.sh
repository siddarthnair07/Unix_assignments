#!/bin/bash

#script to checks if name given is file or directory
#if it is file then it should display content
#if it is a directory then it should display the list.

echo "Enter the file name: "
read file

if [[ -e $file ]]; then
   if [[ -f $file ]]; then
   cat $file
   elif [[ -d $file ]]; then
   ls $file
fi
else
    echo "file do not exists"
fi