#!/bin/bash -x
filename="$1"
sv="$2"
separator_from="${3-:}"
separator_to="${4-=}"

#echo "Separator_from: $separator_from"
#echo "Separator_to: $separator_to"
arr=
#IFS=":" read -r -a arr 
IFS=$separator_from read -r -a arr <<< "$sv"
#echo "${arr[@]}"
#echo "${#arr[@]}"
for ((i=0; i < ${#arr[@]}; i++))
do
  k="${arr[$i]}"
  let i++
  v="${arr[$i]}"
  sed -i -r "s/($k *= *).*/\1$v/" $filename
done

