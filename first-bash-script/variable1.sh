#!/bin/bash

# Args and system enviroment variables script


echo The first args sent to the script $1
echo The second args sent to the script $2
echo The name of the Bash script $0
echo The number of args $#
echo All the args supplied to bash script $@
echo The exit status of the most recently run process $?
echo The process ID if the current script $$
echo The username of the user running the script $USER
echo The hostname of the machine the script is running on $HOSTNAME
echo The number of seconds since the script was startrd $SECONDS
echo Returns a different random number each time is it refered to $RANDOM
echo Returns the current line number in the Bash script $LINENO


#  Our own variables

myvariable=Hello
anothervarialbe=Wesam

echo
echo $myvariable $anothervariable
echo

sampledir=/.

ls $sampledir

# Declare varible with quotes

myvar='hello word'
echo
echo $myvar
echo


# command substitution (if the output is multiline it will stripe out the newlines and output will be on a single line)

commandvar=$( ls ./ | wc -l )
echo
echo There are $commandvar entries in the directory /.
echo


# exporting a variable to make it available to other script

var1=wesam
var2=foo

echo
echo $0 :: var1 : $var1 var2 : $var2
echo

export var1
./variable2.sh

echo $0 :: var1 : $var1, var2 : $var2
