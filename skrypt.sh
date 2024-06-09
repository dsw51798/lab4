#!/bin/bash
if [ "$1" == "--date" ]; then
	date
elif [ "$1" == "--logs" ]; then
	log_amount=100
	if [ ! -z "$2" ]; then
		log_amount=$2
	fi
	for i in $(seq 1 $log_amount); do
		filename="log$i.txt"
		echo "Nazwa pliku: $filename" > $filename
		echo "Skrypt: $0" >> $filename
		echo "Data: $(date)" >> $filename
	done
fi
