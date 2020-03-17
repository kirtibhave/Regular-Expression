#!/bin/bash -x
echo "**********Welcome to User Registration Problem**********"
shopt -s extglob

firstName=$1
lastName=$2
nameRule="(^[A-Z]{1}[a-z]{2,}*)$"

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

checkNameRule


