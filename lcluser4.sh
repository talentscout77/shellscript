#!/bin/bash

#This script creates an account on the local system
#You will be prompted for the account name and password

# we can use the 'type' command to tell if a command is an actual command or a file on the file system
# We can get input from a user by using the read command.



#Ask for the user' name
read -p 'Enter the username to create: ' USER_NAME


# Ask for the real name of the person
read -p 'Enter the name of the person who this account is for: ' COMMENT


# Ask for the password
read -p 'Enter the password to user for the accout: ' PASSWORD 

# Create the user

sudo useradd -c "${COMMENT}" -m $USER_NAME

# Set the password for the user

sudo passwd ${PASSWORD}


# Force the user to change password on first login
#sudo passwd -e ${USER_NAME}



