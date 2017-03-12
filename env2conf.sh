#!/bin/bash
sv="$1"
separator_from="${2-:}"
separator_to="${3-=}"

#echo "Separator_from: $separator_from"
#echo "Separator_to: $separator_to"
arr=
#IFS=":" read -r -a arr 
IFS=$separator_from read -r -a arr <<< "$sv"
#echo "${arr[@]}"
#echo "${#arr[@]}"
for ((i=0; i < ${#arr[@]}; i++))
do
  echo -n "${arr[$i]}${separator_to}"
  let i+=1
  echo "${arr[$i]}"

#sed -r "s/($k1 *= *\").*/\1$v1\"/" c.conf
done

