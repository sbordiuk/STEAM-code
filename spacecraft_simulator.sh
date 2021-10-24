#!bin/bash

#Spacecraft serial communication simulator (RS422)
#Author: Sarah Bordiuk

#as a test, prints alphabet starting from 'a' and then adds a letter each iteration

sudo picocom -b 115200 /dev/ttyUSB0
ls /dev

echo "What device would you like to test communications with?"
read serial_dev

echo "Sending alphabet letter by letter to $serial_dev"

alphabet = "abcdefghijklmnopqrstuvwxyz"
alpha_length = ${#alphabet}
i=0

while [$i -lt $alpha_length]
do
	echo ${alphabet:0:$i} > /dev/$serial_dev
	true $((i=i+1))
	sleep(1)
done
exit
