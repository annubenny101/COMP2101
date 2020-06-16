#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:

echo "WE ARE ROLLING TWO-PAIRS OF DICE"
#  put the number of sides in a variable which is used as the range for the random number
diceSide=6
#   minimum value for the generated number in another variable
minValue=1
#  rolling the dice using the variables for the range
echo "Rolling..."
die1=$(( RANDOM % diceSide + minValue))
die2=$(( RANDOM % diceSide + minValue))

echo "Rolled $die1, $die2"

# displaying the rolled results

echo "The results are: $die1, $die2"

# Task 2:
#  generate the sum of the dice
dieSum=$(($die1 + $die2))
#  generate the average of the dice
dieAvg=$(($dieSum / 2))

#  display a summary of what was rolled, and what the results of your arithmetic were

echo "The dice sum is: $dieSum "
echo "The average of the total is: $dieAvg"
