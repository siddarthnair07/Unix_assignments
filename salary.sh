#!/bin/bash

# Script to calculate salary from given basic:
# Salary = basic + dp + da +hra +ma –pf

#basic = to be taken as input
#dp = 50 % of basic
#da = 35 % of (basic + dp)
#hra = 8 % of (basic + dp)
#ma = 3 % of (basic + dp)
#pf = 10% of (basic + dp)


echo " Enter the basic amount: "
read basic

dp=$(echo "scale=4; $basic*0.5" | bc)
echo "dp is: " $dp

basic_dp=$(echo "scale=4; $basic+$dp" | bc)

da=$(echo "scale=4; $basic_dp*0.35" | bc)
echo "da is: " $da

hra=$(echo "scale=4; $basic_dp*0.08" | bc)
echo "hra is: " $hra

ma=$(echo "scale=4; $basic_dp*0.03" | bc)
echo "ma is: " $ma

pf=$(echo "scale=4; $basic_dp*0.1" | bc)
echo "pf is: " $pf

__salary=$(echo "scale=4; ($basic+$dp+$da+$hra+$ma)-$pf" | bc)
echo "Salary is: " $__salary 