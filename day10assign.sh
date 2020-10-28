#!/bin/bash -x

read -p "enter a b c : " a b c


s2=$((`expr $a*$b+$c`));

echo " s2 - " $s2


