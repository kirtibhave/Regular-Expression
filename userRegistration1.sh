#!/bin/bash -x
echo "**********Welcome to User Registration Problem**********"
shopt -s extglob

read -p  "enter firstname:" firstName

firstNameRule="(^[A-Z]{1}[a-z]{2,}*)$"

if [[ $firstName =~ $firstNameRule ]]
then
	echo "Firstname is correct"
else
	echo "Invalid Firstname...!!Enter proper Firstname"
fi
