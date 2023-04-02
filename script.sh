#!/bin/bash
if [[ "$1" == "--date" ]]; then
	date
elif [[ "$1" == "--logs" ]]; then
	declare -i logsNumber=100
	if [[ -n "$2" ]]; then
		logsNumber=$2
	fi
	i=1
	while [ $i -le $logsNumber ]; 
	do 
		echo "$0" >> "log$i.txt"
		date >> "log$i.txt"
		i=$(($i+1))
	done
fi
