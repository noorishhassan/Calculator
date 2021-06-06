#!/bin/bash

var1="$1"
var2="$3"

if [[ $# != 3 ]]; then
	echo "invalid arguments"
fi

if (( $var1 >= 1 && $var1 <= 100 && var2 >=1 && var2 <= 100 )); then
	if [[ $2 == "a" ]] ; then
		var3="$(($var1 + $var2))"
	elif [[ $2 == "s" ]] ; then
		var3="$(($var1-$var2))"
	elif [[ $2 == "m" ]] ; then
		var3="$(($var1 * $var2))"
	elif [[ $2 == "d" ]] ; then
		var3="$(($var1 / $var2))"
	else
		echo "invalid operator"
	fi
	echo "result is $var3"
elif (( $var1 < 1 || $var1 > 100 )) ; then
	echo "operator 1 is out of range"
elif (( $var2 < 1 || $var2 > 100 )) ; then
	echo "operator 2 is out of range"
fi
