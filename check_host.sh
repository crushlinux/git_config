#!/bin/bash

for i in 192.168.200.{1..254}
do
	ping -c 3 -w 1 -i 0.2 $i &> /dev/null
	if [ $? -eq 0 ]
	then
		echo "Host $i is up."
	else
		echo "Host $i is down."
	fi
done
