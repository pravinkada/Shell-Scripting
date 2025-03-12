#!/bin/bash
read -p "enter your marks " marks
if [[ $marks -gt 40 ]]
then
	echo "passss"
else
	echo "fail!!!"
fi
