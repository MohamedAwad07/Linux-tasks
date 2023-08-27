#!/bin/bash


ext="$1"
new_name="$2"
count=1

for img in *.$ext; do
  new_img="${new_name}${count}.${ext}"
  mv "$img" "$new_img"
  count=$((count + 1))
done
