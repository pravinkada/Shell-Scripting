#!/bin/bash

a=10
until [[ $a -eq 1 ]]
do
	echo "this is until loops value $a"
	let a--
done
