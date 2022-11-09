#!/bin/bash

size=$1

if [ $# -eq 0 ]; then
    echo "enter a number"
    exit 1
fi
#first part of the romb (the top)
part1=1
for ((i=0;i<size;i++)); do
for ((j=0;j<((size-part1));j++)); do
echo -n " "
done

for ((k=0;k<$part1;k++)); do
echo -n "* "
done

echo ""
part1=$(($part1+1))
done

#second part of the romb (bottom)
part2=size-1
for ((i=0;i<=((size-1));i++)); do
for ((j=0;j<((size-part2));j++)); do
echo -n " "
done

for ((k=0;k<part2;k++)); do
echo -n "* "
done

echo ""
part2=$(($part2-1))
done

exit 0
