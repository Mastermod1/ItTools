#!/bin/bash
if [[ "$1" == "--date" ]]; then
	date
elif [[ "$1" == "--logs" ]]; then
	for ((i = 1 ; i < 101 ; i++)); do
	  echo "$0" >> "log$i.txt"
	  date >> "log$i.txt"
	done
fi
