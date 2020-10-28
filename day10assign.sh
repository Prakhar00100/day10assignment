#!/bin/bash -x

declare -i arr

read -p "enter a b c : " a b c

s1=$(($a+($b*$c)));

echo " s1 - " $s1

s2=$((`expr $a*$b+$c`));

echo " s2 - " $s2

s3=$((`expr $c+$a/$b`));

echo " s3 - " $s3


s4=$((`expr $a%$b+$c`));

echo " s4 - " $s4

temp=0
arr[((temp++))]="$s1"
arr[((temp++))]="$s2"
arr[((temp++))]="$s3"
arr[((temp))]="$s4"

echo "dictionary -" ${!arr[@]}

echo "Result in array "${arr[@]}

for ((i = 0; i<4; i++)) 
do

    for((j = 0; j<4-i-1; j++)) 
    do

        if [ ${arr[j]} -lt ${arr[$((j+1))]} ] 
        then 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]} 




