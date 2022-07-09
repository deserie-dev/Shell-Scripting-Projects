#!/bin/bash

echo "Hi there! Welcome to the number game."
echo "Guess a number between 1 and 20 (inclusive)"

RANGE=20 
number=$RANDOM
let "number %= $RANGE" 

for i in 1 2 3 4 5 6 # Gives the user 6 attempts
do
	read value
	if [ "$value" -lt "$number" ] # if (value < number)
		then 
			echo "Too small"
			echo "Try again"
	elif [ "$value" -gt "$number" ] # if (value > number)
		then 
			echo "Too big"
			echo "Try again"
	else 
		echo "You Won!"
		exit
	fi
done

echo "Sorry, you lost!"
