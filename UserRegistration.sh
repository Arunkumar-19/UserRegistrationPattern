#! /bin/bash

echo "------Welcome to User Registration------"
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

echo "Welcome to User Registration"
read -p "Enter the Last Name:" name

function lastName(){

Lastname="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $1 =~ $Lastname ]]
then
        echo "Valid user name"
else
        echo "Invalid user name."
fi

}

firstName $name

shopt -s extglob
read -p "email:" email

function validateEmail(){
        emailpattern="\b[A-Za-z0-9]+\@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b"
        if [[ $1=~$emailpattern ]]
        then
          echo "valid email address"
        else
          echo "Invalid email address"
        fi
}
validateEmail $email

read -p "Mobile Number:" Number

function validateNumber(){
        numberpattern="^[0-9]{12}$ || ^[0-9]{2}[[]][0-9]{10}$"
        if [[ $1 =~ $numberpattern ]]
        then
          echo "valid number"
        else
          echo "Invalid number"
        fi
}
validateNumber $Number


read -p "Enter password :" password

function validatePassword(){
        passpattern1="^([a-zA-Z0-9@#!]){8,}$"
        passpattern2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$"
            if [[ $1 =~ $passpattern1 ]]
            then
                if [[ $1 =~ $passpattern2 ]]
                then
  	              echo "Success : Valid password"
                else
         	       echo "Atleast one special charecter is required"
                fi
           else
               echo "Error : Atleast one digit is mandatory."
            fi
}
validatePassword $password
