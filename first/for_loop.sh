#! /bin/bash
i=1
for i in $(seq 1 100); do
  if [ $((i % 3)) -eq 0 ]; then
    echo "$i"
  fi
done
