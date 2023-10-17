#!/bin/sh
if [ -z "$1" ] || [ -z "$2" ]
then
	echo "Number of arguments should be two."
	exit 1
elif  echo "$1$2" | grep -Eq [^0-9]
then
	echo "Input must be an positive integer."
	exit 1
elif [ "$1" -le 0 ] || [ "$2" -le 0 ]
then
	echo "Input must be greater than 0"
	exit 1
else
	row="$1"
	col="$2"

	for i in $(seq $row)
	do
		for j in $(seq $col)
		do
			printf "%d*%d=%d " "$i" "$j" `expr $i \* $j`
		done
		printf "\n"
	done
fi
exit 0
