#!/bin/bash

# Display the UID and username of the user executing the script
# Display if the user is the root user or not

# Display the UID

echo "Your UID is ${UID}"

# Display the username
# Syntax to get the output of a command

USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"

#We can also use ticks to display a command

echo "Ticks can also be used to display `id -un`"


# Display if the user is root or not
# You can also use a semi colon and keep it on one line
# help if
# help test

if [[ "${UID}" -eq 0 ]]

then 
   echo 'You are root.'

else 
   echo 'You are not root.'

fi


