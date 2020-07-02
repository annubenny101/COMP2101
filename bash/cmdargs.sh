#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array
echo "Processing..."
echo "-----------"
#-h here displays help mode and -v for verbose
case "$1" in
  "-h" )
echo "-h demonstrates help mode"
;;
   "-v" )
echo "-v demonstrates verbose"
;;
 #this is the command to check whether the first argument is debug option.
 #if there is an argument, then a message with debug level is displayed
 #else an error message is displayed to specify a number
-d )
  if [[ "$2" != "" ]]; then

     echo "DEBUG level is ON and Your DEBUG level is $2"
  else
     echo "ERROR!!!, please specify a number in your argument"
   fi 
   exit
   ;;
esac


  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "---------------------------------------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"
