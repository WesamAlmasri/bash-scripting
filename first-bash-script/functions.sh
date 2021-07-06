#!/bin/bash

user=$(whoami)
host=$(hostname)

greeting="My name is $host"

#main
greet(){
	
	echo -e "\nWhat is your name?: \n"
	read name

#echo greeting
	echo -e "\n$greeting\n"
	echo -e "The account $user is logged in\n"
	echo -e "$name, and $user should be friends....\n"
	echo -e "I will now copy some information to $1\n"

}

#copy netinfo

copy() {

	local a=$(ifconfig)
	echo "$a"
	rm output.txt

}

greet "a file"
a="$(copy)"
echo $a >> output.txt
