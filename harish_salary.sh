#!/bin/bash

#script to calculate the gross salary of Harish,
#whose Basic is input through keyboard.
#His DA is 34% of basic salary and HRA is 24% of Basic.
#PF is 11% of the basic.


echo " Enter the Basic Salary: "
read basic_salary

if [[ "$basic_salary" -gt 1000 ]]; then
   da=$(echo "scale=4; $basic_salary*0.34" | bc)
   echo "da is: " $da

   hra=$(echo "scale=4; $basic_salary*0.24" | bc)
   echo "hra is: " $hra

   pf=$(echo "scale=4; $basic_salary*0.11" | bc)
   echo "pf is: " $pf

   __salary=$(echo "scale=4; ($basic_salary+$da+$hra)-$pf" | bc)
   echo "Salary of Rajesh  is: " $__salary
else
  echo "Enter basic salary more than 1000."
fi