#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
# assigning 3 values to three variables
firstnum=5
secondnum=2
thirdnum=3

#  the sum of the 3 numbers with a label
sum=$(( firstnum + secondnum + thirdnum))

# displaying the divident o two numbers
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
