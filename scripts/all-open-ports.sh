
#!/bin/bash

# Script: all-open-port
# Auther: Wesam Al-Masri
# Date of latest revision: 09-07-2021
# Purpose: shows all currently listening ports on machine

while :
do
	echo -e "Enter the ip address you want to scan for open ports, (enter Q for exit)\n"
	read ip
	
	if [ $ip == "" ]; then
		echo "Input a valid ip address!"
		continue
	elif [ $ip = "q" ] || [ $ip = "Q" ]; then
	break
	fi

	echo -e "Please wait while it is scanning all open ports\n"
	nc -z -v $ip 1-65000 > $ip-open-ports-report.txt 2>&1

	report="$ip-open-ports-report.txt"
	echo -e "file name $report\n"

	while IFS= read -r record
	do
		line=($record)
		if [ ${#line[@]} == 7 ]; then
			echo The port ${#line[4]} is opened on protocol ${line[5]}
		fi
	done < "$report"

	rm -rf $ip-open-ports-report.txt

done
