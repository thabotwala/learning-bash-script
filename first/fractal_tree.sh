#! /bin/bash
#read iterations
clear
coloms=100
rows=64
char=1
i=0
j=0
y_start=25
y_end=75
y_width=50
for i in $(seq 1 $rows); do
  for j in $(seq 1 $coloms); do
    if [ "$j" -eq "$y_start" ] || [ "$j" -eq "$y_end" ]; then
      printf "$y_start"
    else
      printf "_"
    fi
  done
  if  [ "$y_start" -le 50 ] && [ "$y_end" -ge 44 ]; then
    y_start=$((y_start + 2))
    y_end=$((y_end - 2))
  else
    y_end=0
  fi
  printf "\n $i"
done
echo "\n\n"
