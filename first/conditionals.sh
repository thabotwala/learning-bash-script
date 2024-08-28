#! /bin/bash

X=4
Y=5
empty_str="Full of content"
#check if x < y
if [ $X -lt $Y ]
then
  echo "X is less than Y, where X=$X and Y=$Y"
else
  echo "X is greater"
fi

#check if file exist with -e operator
if [ -e $HOME/.vimnashrc ]
then 
  echo "File does exist"
  #check if whether symbolic link or real file
  if [ -L $HOME/.vimrc ]; then
    echo "File is a symbolic link"
  else
    echo "File is a real/actual File"
  fi
else
  echo "File does not exist"
fi

#check empty string
if [ -n "$empty_str" ]; then
  echo "empty string is not empty"
else
  echo "string is empty"
fi
