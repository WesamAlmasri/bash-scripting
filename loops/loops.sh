#!/bin/bash

# basic while loop

echo while loop ...
counter=1

while [ $counter -le 10 ]
do
	echo $counter
	((counter++))
done

# until loop

echo until loop ...

ct=10

until [ $ct -gt 15 ]
do
	echo $ct
	((ct++))
done

# for loop

echo for loop

names="wesam waseem nadeem"

for name in $names
do
	echo $name
done

# ranges increasing value

echo ranges increasing value ...

for value in {1..5}     # no spaces
do
	echo $value
done

echo ranges decreasing value

for value in {5..0}
do
	echo $value
done

echo  ranges with specifying step

for value in {10..0..2}
do
	echo $value
done
