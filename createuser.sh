#! /bin/bash

# Author: Deserie Murembeni
# Date: 09/07/2022
# Description: This script will create a user account and errors out if the username already exists

echo "Please provide a username: "
read u
echo

grep -q $u /etc/passwd
        if [ $? -eq 0 ]
        then
        echo ERROR! The username $u already exists.
        echo Please choose another username.
        echo exit 0
        fi

useradd $u
echo Success! $u user account has been created.