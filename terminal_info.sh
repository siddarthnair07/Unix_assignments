#!/bin/bash

#Write a Unix Shell Script which prints the following
#a.Current home directory.
#b.Current user name.
#c.The message "Today is :"  with current date in MM/dd/yy formatd.
#The message "No of users logged in:" with total no of current logged in users
#The message "Terminal :”  With you own terminal number


echo "Current home directory: " $PWD

echo "Current user name: " $USER

echo "Today is: " $(date +"%m-%d-%Y")

echo "No of users logged in: " $(who -q) 

echo "Terminal: " $(tty)