#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
# using the echo command, reading values from the user

echo "ARITHMETIC-DEMO"
echo "================"
echo -n "Enter the first number: "
read firstnum
echo -n "Enter the second number: "
read secondnum
echo -n "Enter the third number: "
read thirdnum

#  the sum of the 3 numbers with a label
sum=$(( firstnum + secondnum + thirdnum))

# displaying the divident of two numbers
dividend=$(( firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

#  the product of the 3 numbers with a label
product=$(( firstnum * secondnum * thirdnum ))
cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum mult $secondnum mult $thirdnum is $product
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
