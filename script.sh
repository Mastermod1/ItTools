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
		mkdir "log$i"
		echo "$0" >> "log$i/log$i.txt"
		date >> "log$i/log$i.txt"
		echo "log$i.txt" >> "log$i/log$i.txt"
		i=$(($i+1))
	done
elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
	declare -i logsNumber=100
	if [[ -n "$2" ]]; then
		logsNumber=$2
	fi
	i=1
	while [ $i -le $logsNumber ]; 
	do
		mkdir "error$i"
		echo "$0" >> "error$i/error$i.txt"
		date >> "error$i/error$i.txt"
		echo "error$i.txt" >> "error$i/error$i.txt"
		i=$(($i+1))
	done
elif [[ "$1" == "--init" ]]; then
	git clone https://github.com/Mastermod1/ItTools.git
	$PATH=$PATH:$(pwd)/ItTools/script.sh
elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
	echo "===Super script 3000==="
	echo "  --init   |"
	echo "  --help   | -h"
	echo "  --date   | -d -> Shows date"
	echo "  --logs N | -l N -> Creates N files named logN.txt with name of script and date inside"
fi
