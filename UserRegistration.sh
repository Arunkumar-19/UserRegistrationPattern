#! /bin/bash

echo "Welcome to User Registration"
read -p "Enter the First Name:" name

function firstName(){

Firstname="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $1 =~ $Firstname ]]
then
        echo "Valid user name"
else
        echo "Invalid user name."
fi

}

firstName $name