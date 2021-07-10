#/bin/bash

# run lshw
lshw -short

# view how much memory is available
free

# System performance
vmstat

# Save information to a file
vmstat > vmstat.txt

# Open an application

firefox
libreoffice

# Open an application and have it do something
firefox https://www.fire-keys.herokuapp.com
libreoffice --writer vmstat.txt

# Read manual for an application
man firefox
man libreoffice
