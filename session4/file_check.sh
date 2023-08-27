#!/bin/bash 

filename="$1"
directory="$2"

if [[ -f "$directory/$filename" ]] 
   then
      echo "File exists"
      echo "Content of $filename:"
      cat "$directory/$filename"
  else
     echo "File does not exist"
fi
