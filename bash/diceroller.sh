#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# rolling the dice and displaying my first name by each characters
echo "
Rolling...
$(( RANDOM % 4 + 1)) A
$(( RANDOM % 4+ 1)) N
$(( RANDOM % 4 + 1)) N
$(( RANDOM % 4 + 1)) U

"
