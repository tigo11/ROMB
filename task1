#!/bin/bash

echo -n "Input-> "
read -a sentence
length=${#sentence[@]}
echo -n "Output-> "

for ((i=$(( $length - 1 ));i>=0;i--)); do
	echo -n "${sentence[$i]} "
done

echo

exit 0
