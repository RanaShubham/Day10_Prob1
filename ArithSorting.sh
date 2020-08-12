#!/bin/bash -x

echo "Welcome to Arithmetic computation and sorting Program"

declare -A calc
declare -a calcArr
i=0

read -p "Enter a number: " a
read -p "Enter another number: " b
read -p "Enter one last number: " c

calc["calc1"]=`awk "BEGIN {print ${a}+${b}*$c}"`

calc["calc2"]=`awk "BEGIN {print $a*$b+$c}"`

calc["calc3"]=`awk "BEGIN {print $c + $a/$b}"`

calc["calc4"]=`awk "BEGIN {print $a%$b + $c}"`

for num in "${calc[@]}"
do
	calcArr[ ((i++)) ]=$num
done
