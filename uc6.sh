#!/bin/bash -x

echo "Enter the input 1"
read a

echo "Enter the input 2"
read b

echo "Enter the input 3"
read c

s1=$(( $a + $b * $c ))
s2=$(( $a * $b + $c ))
s3=$(( $c + $a / $b ))
s4=$(( $a % $b + $c ))

declare -A dict
dict[S1]=$s1
dict[S2]=$s2
dict[S3]=$s3
dict[S4]=$s4

arr=( ${dict[S1]} ${dict[S2]} ${dict[S3]} ${dict[S4]} )

echo "Printing Array=${arr[@]}"

arrAsc=($(for l in ${arr[@]}; do echo $1; done | sort -n))
echo "Printing Array in Ascending Order:${arrAsc[@]}"

aeeDsc=($(for m in ${arr[@]}; do echo $m; done | sort -nr))
echo "Printing Array in Descending order:${arrDsc[@]}"
