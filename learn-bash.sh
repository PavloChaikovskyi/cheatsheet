#!/bin/bash

#variable="Some text"
#length=7
#foo="Foo"

# echo $variable
# echo "${variable/Some/A}"
# echo ${variable:0:length}
# echo ${variable: -4}
# echo ${#variable}

# other_var=variable
# echo ${!other_var}

# echo ${foo:-"Default Value If Foo is missing"}


##################################################################
# ARRAYS:
##################################################################

#arr=($@)
#array=(one two three four five ${arr[@]})
# echo ${array[@]}

# echo ${#array[@]} #=> 6
# echo ${array[@]:0:1} #=> one
# echo ${array[@]/one/One} #=> One
# echo ${#array[0]} #=> 3

# for item in ${array[@]}; do
#	echo $item
# done

# for item in $@; do
#	echo $item
# done

# echo {1..10} #=> echo range 
 
# from=1
# to=10 
 
#echo {$from..$to} # => {$from..$to} 
 
# for i in {1..10}; do
#	echo $i
# done

##################################################################
# Built-in variables:
##################################################################

# echo "Last program's return value: $?"
# echo "Script's PID: $$"
# echo "Number of arguments passed to script: $#"
# echo "All arguments passed to script: $@"
# echo "Script's arguments separated into different variables: $1 $2"
# echo $PWD
# echo $USER
# rm -- *k*

###################################################################
# Input, Create file, multiline EOF, range, grep, delete
###################################################################

#echo "add file name..."
#read name
#touch $name

#echo third line > $name
 
#cat <<EOF >> $name 
#first line
#second line
#EOF

#for i in {1..50}; do 
#	echo -n = 
#done 
#echo

# cat $name
 
#for i in {1..50}; do 
#	echo -n = 
#done 
#echo

#ls | grep $name
#rm $name

################################################################
# COLORS : echo -e ${RED}Access denied${EOC}
################################################################

RED="\e[31m"
GREEN="\e[32m"
EOC="\e[0m"

#################################################################
# IF STATEMENT && FUNCTIONS
#################################################################

function getName() {
	echo enter user name
	read -s name
}

function login() {
	getName

	while [[ -z $name ]]; do # -z empty -n not empty
		echo name is unset
		getName
	done 

	if [[ $name == $USER ]]; then
		echo -e Welcome ${GREEN}$name${EOC}!
	else
		echo -e ${RED}Access denied${EOC}
		exit 1 # stop running script after that
	fi
}

# login

arr=(login $@)
array=(one two three four five ${arr[@]})
# echo ${arr[0]}

#for i in $@; do echo $i; done #=> ONE LINE LOOP
 
#################################################################
# OPERATORS && || =~
#################################################################
# There are other comparison operators for numbers listed below:
# -eq - equal
# -ne - not equal
# -lt - less than
# -gt - greater than
# -le - less than or equal to
# -ge - greater than or equal to
#  =~ - test string against REGEX pattern























