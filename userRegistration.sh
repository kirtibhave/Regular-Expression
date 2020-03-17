#!/bin/bash -x
echo "**********Welcome to User Registration Problem**********"
shopt -s extglob

read -p "enter firstname:" firstName
read -p "enter lastName:" lastName

nameRule="(^[A-Z]{1}[a-z]{2,}*)$"

if [[ $firstName =~ $nameRule && $lastName =~ $nameRule ]]
then
   echo "Firstname and lastname is correct"
   echo "Firstname is:"$firstName
	echo "LastName is:"$lastName
else
   echo "Invalid entry..!!enter proper name"
fi














