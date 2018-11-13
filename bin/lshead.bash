#! /bin/bash
#lshead is a command that lists the first or last few lines of every file in a
#directory specified by the argument.
#author Amrit Sarai October 2017

#firstly moves to the home directory
cd /home/stud2/u1755231

#if the first argument is head and the third argument is a directory
if [ $1 == "-head" ] && [ -d $3 ]
then
     #moves to directory
     cd /home/stud2/u1755231/$3
     #searches the first n lines
     head -n $2 *

#if the first argument is head and the third argument is a directory
elif [ $1 == "-tail" ] && [ -d $3 ]
then
    #moves to third arguments directory
    cd /home/stud2/u1755231/$3
    #search the last n lines
    tail -n $2 *

#otherwise issue a help statement
else
    echo "Can't find this directory in your home page"
    echo "You also need to enter head or tail. Make sure you put a - before"
    echo "like this -head"
fi

