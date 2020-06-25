#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
title="Overlord"
USER="annu"
hostname=$(hostname)

#commands to find the date and time
day=$(date +%A)
hour=$(date +%I)
min=$(date +%M)
meridiem=$(date +%P)

echo "It is $day at $hour:$min $meridiem"

#to display each days with title

if [ $day == "Monday" ]
then
  title="Day One"

elif [ $day == "Tuesday" ]
then
   title="Day Two"
elif [ $day == "Wednesday" ]
then
    title="Day Three"
elif [ $day == "Thursday" ]
then
     title="Day Four"
elif [ $day == "Friday" ]
then
      title="Day Five"
elif [ $day == "Saturday" ]
then
      title="Day Six"
else
      title="Day Seven"
fi

cat <<EOF


Welcome to planet $hostname, "$title $USER!"

EOF
