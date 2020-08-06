#!/bin/bash

# here we display a comment of what the script is going to accomplish

echo "this is my first foray into professional shell scripting"

# Assign a value to a variable
# By naming convention, variables are usually upper case"

WORD='script'

# Display that value using variable

echo "$WORD"

# We are putting $WORD inside of single quotes

echo '$WORD'

#Combine the variables with some hard coded text

echo "$WORD" 'and we are in business'

#Display the contents of the variable using an alternative syntax.

echo "${WORD}" 'and we are in business'

#Appending text to a variable

echo "${WORD}ing is actually fun"

#Show how not to append a variable
#This does not work

echo "$WORDing is actually fun"

#Create a new variable

ENDING='ed'

#Combine two variables
echo "This is ${WORD}${ENDING}"

#Change the value stored in the ENDING variable (Re-assignment)
# Any resultant runs of the script will read this particular variable"

ENDING='ing'


echo "${WORD}${ENDING} is fun"

# Reassign the value to ENDING

ENDING='s'

echo "You are going to write many ${WORD}${ENDING} in this class"


