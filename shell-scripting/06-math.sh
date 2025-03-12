#!/bin/bash
read -p "enter the value of a" a
read -p "enter the value of b" b
let add=$a+$b
echo "addition is ${add}"
echo "sub is $(($a-$b))"
