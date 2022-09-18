#!/bin/bash

if [[ $UID -ne 0 ]]
then
  echo "you are not have root privilage"
  exit 1
fi



read -p "Please enter your name: " USER_NAME 
read -p "enter your comment: " COMMENT 
read -sp "enter your password: " PASSWORD 


useradd -c "$COMMENT" -m $USER_NAME 

if [[ $? -ne 0 ]]
then
  echo "user information couldn't add"
  exit 1
fi

echo $PASSWORD | passwd --stdin $USER_NAME

if [[ $? -ne 0 ]]
then
  echo "Password couldn't be set"
  exit 1
fi

passwd -e  $USER_NAME 

echo "$USER_NAME $PASSWORD "

# This script creates a new user on the local system.

# You will be prompted to enter the username (login), the person name, and a password.

# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser privileges.


# Get the username (login).

# Get the real name (contents for the description field).

# Get the password.

# Create the account.

# Check to see if the useradd command succeeded.
# We don't want to tell the user that an account was created when it hasn't been.

# Set the password.

# Check to see if the passwd command succeeded.

# Force password change on first login.

# Display the username, password, and the host where the user was created.

