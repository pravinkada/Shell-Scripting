#!/bin/bash
echo "a for today date"
echo "b for files in this dir"
echo "c for present dir"

read choice

case $choice in 
	a)date;;
	b)ls;;
	c)pwd;;
esac



