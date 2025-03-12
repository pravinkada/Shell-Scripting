#!/bin/bash
count=0
num=10

while [[ $count -le $num ]]
do 
	echo "this is the $count"
	let count++
done
