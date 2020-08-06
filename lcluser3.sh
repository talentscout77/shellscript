#!/bin/bash

# Display the UID and the username of the user executing this script.

#Display if the user is the ubuntu user or not


# Display the UID

echo "Your UID is ${UID}"

#SHOW="(whoami)"
echo "My name is $SHOW"

# Only display if the UID does not match 1000
# help test (-eq, -ne, != etc)

UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
   echo "Your UID does not match ${UID_TO_TEST_FOR}."
   exit 1
fi

# Display the username
USER_NAME=$(id -un)


# Test if the command succeeded
# ${?} is going to store the most recent exit status of the most recent command.

if [[ "${?}" -ne 0 ]]
then
   echo 'The id command did not execute succesfully.'
   exit 1
fi
echo "Your username is ${USER_NAME}"

# You can use a string test conditional
USER_NAME_TO_TEST_FOR='ubuntu'

if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
   echo "Your username matches ${USER_NAME_TO_TEST_FOR},"
fi

# Test for != (not equal) for the string

if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
   echo "Your username does not match ${USER_NAME_TO_TEST_FOR}"

   exit 1
fi

# If we do not specify an exit command, the exit code of the most recently exited command will be used as the exit code of the script.

exit 0
