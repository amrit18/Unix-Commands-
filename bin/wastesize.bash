#! /bin/bash
# wastesize: A command which reports the number of files in the waste bin.
# author Amrit Sarai Nov 2017

#finds the waste bin and then lists the number of files
#excluding its own directory
find /home/stud2/u1755231/.waste/* | wc -l

