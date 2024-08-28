#! /bin/bash
read EXP
result=$(echo "scale=3 $EXP" | bc)
echo "$result"
