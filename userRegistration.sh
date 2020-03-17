#!/bin/bash -x
echo "**********Welcome to User Registration Problem**********"
shopt -s extglob

#VARIABLE
firstName=$1
lastName=$2
email=$3

#CONSTANTS
NAMERULE="(^[A-Z]{1}[a-z]{2,}*)$"
emailRule="^([a-zA-Z0-9]{3,}[._+-]{1}[a-zA-Z0-9]{3,})[@]{1}[a-zA-Z0-9]*[.]{1}[a-z]{2,3}|[.]{1}[a-z]{2,3}$"

#Function is used to check user's firstname and lastname 
function checkNameRule(){
if [[ $firstName =~ $nameRule && $lastName =~ $nameRule ]]
then
   echo "Firstname and lastname is correct"
   echo "Firstname is:"$firstName
	echo "LastName is:"$lastName
else
   echo "Invalid entry..!!enter proper name"
fi
}

#Function is used to check user's email address
function checkEmail(){
if [[ $email =~ $EMAILRULE ]]
then
	echo "vaild email"
else
	echo "invalid email"
fi
}

checkNameRule
checkEmail

