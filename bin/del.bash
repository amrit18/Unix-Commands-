#! /bin/bash
# del - a version of rm which only copies files to a special ".waste"
# directory.
# author Amrit Sarai Oct 2017

for filename in "$@"
do

#if it is a file
if [ -f "$filename" ]
then
    cp $filename /home/stud2/u1755231/.waste
    echo "file has been copied into waste bin"

#if it is not a file or is not readable
else
     echo "The file $filename does not exist or it is not readable."
     echo "Please note that directories can't be added to (.waste)"
     echo "the waste bin."
     fi
done
