#! /bin/bash
#masher.bash - a command that takes an argument, and asks for the user for an
#an input. The script then terminates when the user enters a  . (full stop).
#then displays information on the string
#author Amrit Sarai Nov 2017

#counters for inital argument
totalcounter=0
inpcounter=0
total=0
userinp=$1

if ! [[ $userinp == "" ]]
then
   #removes all the special characters
   userinp=${userinp//[[:punct:]]/}
   echo "The value of masher is: " "$userinp"
   #counter for the inital argurment
   total=${#userinp}
   mashdig="${userinp//[^[:digit:]]/}"
   mashalpha="${userinp//[^[:alpha:]]/}"
   let totalcounter="$total + $inpcounter"
   #issues a statement
   echo "Keep entering an input. If you would like to leave press a  . (full stop)"
   echo "When you leave it will display information the string."
   echo "Note: we do not count any special characters entered."
else
    #issues a help statement
    echo "You should enter an argument!"
    echo "Try entering an input now, if you would like to exit the string press"
    echo "(full stop)"
fi

while true
do
   read -p "Enter string: " user

   #removes special characters except . because that is my control
   user=${user/[[:punct:]][[^.]]/}

   #all the counters for the entered string
   len=${#user}
   mashed="${user%%.*}"
   beforemash="${user##*.}"
   numbers="${user//[^[:digit:]]/}"
   alphachar="${user//[^[:alpha:]]/}"
   nonalpha="${user//[^[:space:][:punct:]]/}"
   let counter="counter + 1"
   let position="${#mashed} + 1"

   #this it the running count for the characters
   #excluding initial arugment
   #when I tried using let got an error
   index=$[$index + $len]
   number=$[$number + ${#numbers}]
   alphas=$[$alphas + ${#alphachar}]
   totalcounter=$[$len + $totalcounter]

   if [[ -z $user ]]
   then
       #help usage, if the user doesn't enter anything
       echo "Help: You need to enter a string in the prompt if you would"
       echo "like to exit enter a . (full stop)"
   fi

   if [[ $user == *"."* ]]
   then
       #total count including first input
       let indexdig="$number + ${#mashdig}"
       let indexalpha="$alphas + ${#mashalpha}"
       let inputcounter="$totalcounter -  ${#beforemash} - 1"
       #tells us about the last string entered
       echo "Control value is true at the postion: $position "
       echo "Number of digits in the string: "${#numbers}
       echo "Number of alphabetic characters in the string: "${#alphachar}
       echo "Number of non alpha numeric characters in the string: "${#nonalpha}
       echo "Total number of characters in the string (including control): "$len
       echo "Characters mashed before control value: "${#mashed}

       #includes first argument
       echo "Total digits: $indexdig"
       echo "Total alphacharacters: $indexalpha"
       echo "Total characters: $totalcounter"
       echo "Total characters mashed before control value: $inputcounter"
       echo "Number of loops: $counter"
      break
    fi
done

