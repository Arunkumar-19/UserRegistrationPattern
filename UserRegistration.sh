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
        passpattern3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$"
        passpattern4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$"
            if [[ $1 =~ $passpattern1 ]]
            then
                if [[ $1 =~ $passpattern2 ]]
                then
                    if [[ $1 =~ $passpattern3 ]]
                    then
                        if [[ $1 =~ $passpattern4 ]]
                        then
                        echo "Success : Valid password"
                    else
                        echo "Error: Should have one special charecter"
                     fi
                 else
                     echo "Error : Password should have one numeric number"
                 fi
               else
                  echo "Error : Atleast one uppeCase required"
              fi
        else
             echo "Error : password should be length of 8"
        fi
}
validatePassword $password
