#!/bin/bash

# break statement 

# while copying files if the free disk space gets below a certian value then stop copying

for value in $1/*
do
	used=$( df $1 | tail -1 | awk '{ print $5 }' | sed 's/%//' )
	if [ $used -gt 90 ]
	then
		echo Low disk space 1>&2
		break
	fi
	cp $value $1/backup/
done

# continue

# while processing a series of files, if one file don't have the read permission we should not try to process it

for value in $1/*
do
	if [ ! -r $value ]
	then
		echo $value not readable 1>&2
		continue
	fi
	cp $value $1/backup/
done

# select
echo select a name from the list

names='wesam waseem nadeem habieb Quit'

select name in $names
do
	if [ $name == 'Quit' ]
	then
		break
	fi
	echo Hello $name
done

echo Bye
