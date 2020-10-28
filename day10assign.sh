#!/bin/bash -x

read -p "enter a b c : " a b c

s4=$((`expr $a%$b+$c`));

echo " s4 - " $s4




