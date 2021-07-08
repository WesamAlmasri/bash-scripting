#!/bin/bash

# Copy a set of . html files to .php files

for value in $1/*.html
do
	cp $value $1/$( basename -s .html $value  ).php
done 
