#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHr=20
randomCheck=$(( RANDOM%3 ))

if [ $isFullTime -eq $randomCheck ]
then
      empHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
      empHrs=4
else
      empHrs=0
fi

dailyWage=$(($empHrs*$empRatePerHr))
echo $dailyWage
