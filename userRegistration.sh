#!/bin/bash -x
echo "**********Welcome to User Registration Problem**********"
shopt -s extglob

#VARIABLE
firstName=$1
lastName=$2

#CONSTANTS
NAMERULE="(^[A-Z]{1}[a-z]{2,}*)$"
EMAILRULE="^([a-zA-Z0-9]{3,}[._+-]{1}[a-zA-Z0-9]{3,})[@]{1}[a-zA-Z0-9]*[.]{1}[a-z]{2,3}|[.]{1}[a-z]{2,3}$"
MOBILERULE="^([0-9]{2}\s{1}[0-9]{10})$"
PASSWORDRULE="^([A-Z]{1,}|[a-zA-Z]{8,})$"

read -p "Enter email address" email
read -p "Enter mobile number" mobileNumber
read -p "Enter password " password

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
	echo "vaild email address"
else
	echo "invalid email address"
fi
}

#function is used to check user's mobile number
function checkMobileNumber(){
if [[ $mobileNumber =~ $MOBILERULE ]]
then
	echo "valid mobile number"
else
	echo "Invalid mobile number"
fi
}

function checkPassword(){
if [[ $password =~ $PASSWORDRULE ]]
then
	echo "valid password rule"
else
	echo "invalid password rule"
fi
}

checkNameRule
checkEmail
checkMobileNumber
checkPassword
