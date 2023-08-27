#!/bin/bash

while true; do
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
  echo "Enter your choice: "
  read choice

  if [ "$choice" -eq 5 ]; then
    echo "Exiting..."
    exit 0
  fi

  echo "Enter the first number: "
  read num1
  echo "Enter the second number: "
  read num2

  case $choice in
    1)
      result=$((num1 + num2))
      operator="+"
      ;;
    2)
      result=$((num1 - num2))
      operator="-"
      ;;
    3)
      result=$((num1 * num2))
      operator="*"
      ;;
    4)
      result=$(echo "scale=2; $num1 / $num2" | bc)
      operator="/"
      ;;
    *)
      echo "Invalid choice. Please try again."
      continue
      ;;
  esac

  echo "$num1 $operator $num2 = $result"
  echo
done
