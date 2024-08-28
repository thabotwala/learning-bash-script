#! /bin/bash
#get the first cmd arg and ignore upper/lower casing
case "${1,,}" in
  1 | 2) echo 1
  ;;
  4 | 5 | 8) echo "4 or 5 or 8"
  ;;
  *) echo "neither"
  ;;
esac

