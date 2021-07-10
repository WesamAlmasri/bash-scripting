#!/bin/bash

# Script: spa
# Auther: Wesam Al-Masri
# Date of latest revision: 09-07-2021
# Purpose: outputs a report about current system CPU and RAM performance

spa(){
# variables to store cpu info
cpu_type=$(lshw -short | awk '$2 == "processor" { print $3 " "  $4 "  " $5 " " $6 " " $7 " " $8 }')
cpu_user_time=$(vmstat | tail -1 | awk '{ print $13 }')
cpu_system_time=$(vmstat | tail -1 | awk '{ print $14 }')
cpu_idle_time=$(vmstat | tail -1 | awk '{ print $15 }')
cpu_wait_io_time=$(vmstat | tail -1 | awk '{ print $16 }')
cpu_stolen_vm_time=$(vmstat | tail -1 | awk '{ print $13 }')

# variables to store ram info
total_mem=$(free -h | head -2 | tail -1 | awk '{ print $2 }')
used_mem=$(free -h | head -2 | tail -1 | awk '{ print $3 }')
free_mem=$(free -h | head -2 | tail -1 | awk '{ print $4 }')
shared_mem=$(free -h | head -2 | tail -1 | awk '{ print $5 }')
bc_mem=$(free -h | head -2 | tail -1 | awk '{ print $6 }')

echo "------------------------------------------------"
echo "The CPU Information"
echo "------------------------------------------------"
echo "    Processor : $cpu_type"
echo
echo "    Average percent time the CPU spent on running"
echo
echo "    User Time(non kernal)    System Time(kernal)    IDLE    Waiting IO    Stolen from vm"
echo "              $cpu_user_time%                   $cpu_system_time%               $cpu_idle_time%        $cpu_wait_io_time%             $cpu_stolen_vm_time%      "
echo "------------------------------------------------"

echo "------------------------------------------------"
echo "The Memory Performance"
echo "------------------------------------------------"
echo "    Total Memory : $total_mem"
echo
echo "    Used Memory : $used_mem"
echo
echo "    Free Memory : $free_mem"
echo
echo "    Shared Memory : $shared_mem"
echo
echo "    Buffre/Cache Memory : $bc_mem"
echo "------------------------------------------------"
}

echo "Do you want to save the results in a file?(yes/no)"
read answer
if [ $answer == "y" ] || [ answer == "Y" ]; then
	prefix=$(date -u +'%Y-%m-%d-%H-%M-%S')

	spa > "spa-$prefex.txt"
	cat "spa-$prefex.txt"
else
spa
fi

