#! /usr/local/bin/bash


function printtoohigh {
	echo "Your guess was too high."
	echo
}

function printtoolow {
	echo "Your guess was too low."
	echo
}

filecount=$(ls -1q | wc -l)
success=false

while [[ $success -eq false ]]
do
	echo "How many files are in the current directory?"
	read guess
	
	if [[ $guess -eq $filecount ]]
	then
		success=1
		echo "Congratulations. You are correct."
	elif [[ $guess -ge $filecount ]]
	then
		printtoohigh
	else
		printtoolow
	fi
done

