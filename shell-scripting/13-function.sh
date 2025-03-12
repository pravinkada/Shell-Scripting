#!/bin/bash
# functions 
#function myfun {

#      echo " -----------------"
#     echo " welcome ------- to fun of $1 $2"
#    echo " ------------------"
#}
#myfun pravin kadam

function f1 {
	read -p "enter your no" num1
	read -p "enter your no" num2
	let no=num1+num2

	if [[ $no -ge 28 ]]
	then 
		echo "passs!!!!!!"
	else
		echo "fail!!!!!!!"
	fi
}
f1
