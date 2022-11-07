#!/bin/bash
read -a symbols
length=${#symbols[@]}
sum=0
if [ $length -eq 0 ]; then
	sum=122
	printf "The result is: \x$(printf %x $sum)\n"
	exit 0
else
	for ((i=0;i<length;i++)); do
		ascii_num=$(($(echo -n ${symbols[$i]} | od -An -tuC)-96))
		if [[ $ascii_num -lt 1 ]] || [[ $ascii_num -gt 26 ]]; then
			echo "ERROR: ${symbols[$i]} is not symbol!"
			exit 0
		fi
		sum=$(( $sum + $ascii_num ))
	done
	
	if [[ $(( $sum % 26 )) -eq 0 ]]; then
		sum=122
	else
		sum=$(( $(( $sum % 26 )) + 96 ))
	fi
	
	printf "\x$(printf %x $sum)\n"
fi

exit 0
