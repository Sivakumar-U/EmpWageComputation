#!/bin/bash -x

IS_FULL_TIME=1
IS_PART_TIME=2
TOTAL_WORKING_HRS=100
WORKING_DAYS_PER_MONTH=20
EMP_WAGE_PER_HR=20

totalWorkingDays=0
totalEmployeeHrs=0

while [[ $totalWorkingDays -lt $WORKING_DAYS_PER_MONTH && $totalEmployeeHrs -lt $TOTAL_WORKING_HRS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in $IS_FULL_TIME )
		Working_Hrs=8
		;;
		$IS_PART_TIME )
		Working_Hrs=4
		;;
		* )
		Working_Hrs=0
		;;
	esac
	totalEmployeeHrs=$(($totalEmployeeHrs+$Working_Hrs));

done

Monthly_wage=$(( $totalEmployeeHrs*$EMP_WAGE_PER_HR ));
echo "Total Wage in a month:$Monthly_wage"
