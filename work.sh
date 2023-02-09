#! /bin/bash

read -p "input" operand

if [ "$operand" == "!" ]; then
	read -p "Enter a number: " num
  result=1
  for ((i=1; i<=num; i++)); do
    result=$((result * i))
  done
  echo "$result"

else
  read -p "Input number1:" num1
  read -p "Input number2:" num2

  case $operand in
   "+")result=$((num1 + num2))
       echo "$result";;
   "-") result=$((num1 - num2))
       echo "$result";;
   "*") result=$((num1 * num2))
       echo "$result";;
   "/") result=$((num1 / num2))
       echo "$result";;
   "%") result=$((num1 % num2))
       echo "$result";;
    *) echo "Something went wrong:) goodbyeee :*";;
  esac
fi
