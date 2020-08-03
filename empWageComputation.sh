#!/bin/bash -x

echo "Welcome to empWageComputation"

isPresent=1
empRatePerHr=20
randomCheck=$(( RANDOM%2 ))

if [ $isPresent -eq $randomCheck ]
then
      empHrs=8
else
      empHrs=0
fi

dailyWage=$(($empHrs*$empRatePerHr))
echo $dailyWage
