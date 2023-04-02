#!/bin/bash
if [[ "$1" == "--date" || "$1" == "-d" ]]; then
	date
elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
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
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
	echo "===Super script 3000==="
	echo "  --help   | -h"
	echo "  --date   | -d -> Shows date"
	echo "  --logs N | -l N -> Creates N files named logN.txt with name of script and date inside"
fi
