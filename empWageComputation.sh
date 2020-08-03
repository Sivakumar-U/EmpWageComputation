#!/bin/bash -x

IS_FULL_TIME=1
IS_PART_TIME=2
TOTAL_WORKING_HRS=100
WORKING_DAYS_PER_MONTH=20
EMP_WAGE_PER_HR=20

totalWorkingDays=0
totalEmployeeHrs=0

declare -a dailyWage
declare -a days

function getWorkHrs() {
        case $1 in $IS_FULL_TIME )
                	empHrs=8
                ;;
                $IS_PART_TIME )
                	empHrs=4
                ;;
                * )
               		empHrs=0
                ;;
        esac
	echo $empHrs
}

while [[ $totalWorkingDays -lt $WORKING_DAYS_PER_MONTH && $totalEmployeeHrs -lt $TOTAL_WORKING_HRS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	empHrs="$( getWorkHrs $empCheck )"
	totalEmployeeHrs=$(($totalEmployeeHrs+$empHrs))
	dailyWage[$totalWorkingDays]=$(( $empHrs*$EMP_WAGE_PER_HR ))
done

Monthly_wage=$(( $totalEmployeeHrs*$EMP_WAGE_PER_HR ))
echo -e "Days:\c"
echo ${!dailyWage[@]}
echo -e "DailyWage:\c"
echo ${dailyWage[@]}
echo "Total Wage in a month:$Monthly_wage"
