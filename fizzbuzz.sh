#!/bin/bash

maxnumber=100
a=1
while [ $a -le $maxnumber ]; do
	three=$(echo `expr $a % 3`)
	five=$(echo `expr $a % 5`)

	if [ `expr $three + $five` -eq 0 ]; then
		echo "fizz buzz";
	elif [ $three -eq 0 ]; then
		echo fizz;
	elif [ $five -eq 0 ]; then
		echo buzz;
	else
		echo $a;
	fi
	a=$(( $a + 1 ))
done
