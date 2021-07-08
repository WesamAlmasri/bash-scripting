#!/bin/bash

file=out.txt
ps=$(ps aux) # process manager

# ask if you want to kill something
display_procs(){
	echo -e "\nDo you want to manage running processes? y/n?: "
	read -r option
	while :
	do
		if [ "$option" == n ]; then
			echo -e "\nBYEEEE"
			break
		else
			manage_procs
		fi
	done
}

# kill and return
manage_procs(){
	if [ "$option" == y ]; then
		echo -e "$ps"
		echo -e "\nFor reference, I've put the list of running process in $file"
		echo -e "$ps" >> "$file"
		echo -e "\nPlease enter PID you want to kill\n"
		read -r PID
		kill -9 "$PID"

		display_procs
	fi
}


display_procs
