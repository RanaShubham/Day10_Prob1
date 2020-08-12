#!/bin/bash -x

echo "Welcome to Arithmetic computation and sorting Program"

declare -A calc
declare -a calcArr
count=0

read -p "Enter a number: " a
read -p "Enter another number: " b
read -p "Enter one last number: " c

calc["calc1"]=`awk "BEGIN {print ${a}+${b}*$c}"`

calc["calc2"]=`awk "BEGIN {print $a*$b+$c}"`

calc["calc3"]=`awk "BEGIN {print $c + $a/$b}"`

calc["calc4"]=`awk "BEGIN {print $a%$b + $c}"`

for num in "${calc[@]}"
do
	calcArr[ ((count++)) ]=$num
done

echo "Unsorterd: ${calcArr[@]}"

k=0

for (( i=0; i<(${#calcArr[@]}-1); i++ ))
do

	min=$i
	for (( j=($i+1); j<${#calcArr[@]}; j++ ))
	do
		flag=`awk "BEGIN { print ( ${calcArr[$j]} > ${calcArr[$min]} )? "1" : "0" }"`

		if [ $flag -eq 1 ]
		then
			min=$j
		fi
	done

	temp="${calcArr[$k]}"
	calcArr[k]="${calcArr[$min]}"
	calcArr[$min]=$temp
	((k++))

done

k=o

echo "Sorted_descending: ${calcArr[@]}"

for (( i=0; i<(${#calcArr[@]}-1); i++ ))
do

        min=$i
        for (( j=($i+1); j<${#calcArr[@]}; j++ ))
        do
                flag=`awk "BEGIN { print ( ${calcArr[$j]} < ${calcArr[$min]} )? "1" : "0" }"`

                if [ $flag -eq 1 ]
                then
                        min=$j
                fi
        done

        temp="${calcArr[$k]}"
        calcArr[k]="${calcArr[$min]}"
        calcArr[$min]=$temp
        ((k++))

done

echo "Sorted_ascending: ${calcArr[@]}"
	
