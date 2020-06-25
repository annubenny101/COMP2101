#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)


#asking the user to guess password
echo "Guess the user password"

#read the input from keyboard
read myString 

referenceString="password"

#Next is using if command to display whether the password entered by the user is corret/not.

if [ $myString == $referenceString ]

then 
	echo "Correct Password"
else
	echo "Sorry, Wrong Password"

fi 

#Now, we try 5 times to get it right before failing by using if command 
#if 5 times exceeds, displaying your account has been locked

if [ $myString == $referenceString ]

then
	echo "Correct Password"
else
	echo "Sorry Incorrect Password"

echo "Attempt 1 Failed, Try again"
read myString

  if [ $myString == $referenceString ]
   then
   	 echo "Correct Password"
   else
   	  echo "Sorry Incorrect Password"
   	  echo "Attempt 2 Failed, Try again"
   	  read myString

   	if [ $myString == $referenceString ]
   	  then 
   	  	echo "Correct Password"
      else
      	echo "Sorry Incorrect Password"
   	    echo "Attempt 3 Failed, Try again"
   	    read myString

   	    if [ $myString == $referenceString ]
   	  then 
   	  	echo "Correct Password"
      else
      	echo "Sorry Incorrect Password"
   	    echo "Attempt 4 Failed, Try again"
   	    read myString

   	       if [ $myString == $referenceString ]
   	  then 
   	  	echo "Correct Password"
      else
      	echo "Sorry Incorrect Password"
   	    echo "Attempt 5 Failed"
   	    echo "5 ATTEMPTS LIMITED!!!YOUR ACCOUNT HAS BEEN LOCKED"
   	    fi
      fi
     fi   
   fi
fi





