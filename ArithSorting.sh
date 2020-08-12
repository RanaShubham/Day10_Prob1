#!/bin/bash -x

echo "Welcome to Arithmetic computation and sorting Program"

declare -a Numbers

read -p "Enter a number: " a
read -p "Enter another number: " b
read -p "Enter one last number: " c

awk "BEGIN {print ${a}+${b}*$c}"

awk "BEGIN {print $a*$b+$c}"

awk "BEGIN {print $c + $a/$b}"

awk "BEGIN {print $a%$b + $c}"
