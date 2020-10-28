#!/bin/bash -x

read -p "enter a b c : " a b c


s3=$((`expr $c+$a/$b`));

echo " s3 - " $s3



