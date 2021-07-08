#!/bin/bash

names=("wesam" "waseem" "nadeem" "habieb" "naseem")

echo All the array elements at once ---- ${names[*]}
echo
echo The third element in the array is ${names[2]} 
echo 
echo  The total number of items in the array is ---- ${#names[@]}
echo

echo The first item before updating ----- ${names[0]}

names[0]="not  wesam"

echo
echo The first element after updating ----  ${names[0]}
echo

echo test printing the length of the array in another way ----  ${#names[*]}

# add/append element to the array

names+=(omar)

echo The array after adding an element ---- ${names[*]}

echo

# deleting an element from the array

unset names[6]
echo After deleting the sixth element from the array --- ${names[*]}

echo

unset names[0]

echo After deleting the first element from the array --- ${names[*]}

# Deleting the whole array

unset names

echo After deleting the whole array ---- ${names[*]}

# The array can contan different data type elements
