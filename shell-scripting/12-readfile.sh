#!/bin/bash
while read var
do
	echo "this is from $var"
done < file.txt
