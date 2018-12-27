#!/bin/sh

month=$1
day=$2
year=$3

curryear=`date +%Y`

if [ $# -ne 3 ];
then
	echo "Error: Invalid number of argument"
	exit 3
else
	###### YEAR CALCULATE #######
	if [ $year -gt $curryear ] || [ $year -lt 1940 ];
	then 
		echo "Error: Invalid year entered."
		exit 13
	elif [ $[ $year % 4 ] -eq 0 ];
	then
		echo "$year was a leap year"
	else
		echo "$year was not a leap year"
	fi
	
	###### MONTH CALCULATE #######
	if [ "$month" = "Jan" ] || [ "$month" = "Feb" ] || [ "$month" = "Mar" ] || [ "$month" = "Apr" ] || [ "$month" = "May" ] || [ "$month" = "Jun" ] || [ "$month" = "Jul" ] || [ "$month" = "Aug" ] || [ "$month" = "Sep" ] || [ "$month" = "Oct" ] || [ "$month" = "Nov" ] || [ "$month" = "Dec" ];
	then
		case $month in 
			Jan) monthNum=1 ;;
			Feb) monthNum=2 ;;
			Mar) monthNum=3 ;;
			Apr) monthNum=4 ;;
			May) monthNum=3 ;;
			Jun) monthNum=6 ;;
			Jul) monthNum=7 ;;
			Aug) monthNum=8 ;;
			Sep) monthNum=9 ;;
			Oct) monthNum=10 ;;
			Nov) monthNum=11 ;;
			Dec) monthNum=12 ;;
		esac
	else
		echo "Error: $month not valid month"
		echo "Please input valid month"
		exit 11
	fi
	
	##### DAY CALCULATE #######
	if [ $monthNum -eq 1 ]; then
		if [ $day -lt 1 ] || [ $day -gt 31 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 2 ]; then
		if [ $[ $year % 4 ] -eq  0 ]; then 
			if [ $day -ge 1 ] && [ $day -le 29 ]; then
				echo "February has 29 days"
			else
				echo "Invalid day entered for $month"
				exit 12
			fi
		fi
	elif [ $monthNum -eq 3 ]; then
		if [ $day -lt 1 ] || [ $day -gt 31 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 4 ]; then
		if [ $day -lt 1 ] || [ $day -gt 30 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 5 ]; then
		if [ $day -lt 1 ] || [ $day -gt 31 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 6 ]; then
		if [ $day -lt 1 ] || [ $day -gt 30 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 7 ]; then
		if [ $day -lt 1 ] || [ $day -gt 31 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 8 ]; then
		if [ $day -lt 1 ] || [ $day -gt 31 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 9 ]; then
		if [ $day -lt 1 ] || [ $day -gt 30 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 10 ]; then
		if [ $day -lt 1 ] || [ $day -gt 31 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 11 ]; then
		if [ $day -lt 1 ] || [ $day -gt 30 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi
	elif [ $monthNum -eq 12 ]; then
		if [ $day -lt 1 ] || [ $day -gt 31 ]; then
			echo "Invalid day entered for $month"
			exit 12
		fi	
	fi
fi	
	echo "Date entered was $monthNum/$day/${year: -2}"
	
exit 0

	
	
		
	