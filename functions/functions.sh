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


# return a status from a function 
# return zero means everything went successfully, anything else means not
print_something(){
	echo Hello $1
	return 5
}


print_something Mars
print_something ALmasri
echo The previous function has a return value of $?


# to save some output from a function
lines_in_file(){
	cat $1 | wc -l
}

num_lines=$(lines_in_file $0) # number of files in this script

echo This script  $0 has $num_lines in it

# vairable scope is global by default
# you can make it locally using the local keyword inside a function before the variable name

# we can ovveride a commands too
# without the command keyword there will be an infinti loop (the function will call himself)
ls () {
	command ls -lh
}

ls
