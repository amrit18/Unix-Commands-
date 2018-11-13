#! /bin/bash
#chmx -  a command that takes filenames as its arguments and makes those files
# executable to all users
# author Amrit Sarai Nov 2017

#if the user enters nothing
if [  $# -eq 0 ]
   then
       echo "Need to enter a filename to make it executable to all."
fi

for filename in "$@"
do

#if the file exist
if [ -e "$filename" ]
then
     chmod a+x $filename
     echo "$filename has been made executable to all users"

#if the file doesnt exist
elif [ ! -e  "$filename" ]
then
     echo "Sorry, can't find this file. Try again!"
fi
done
