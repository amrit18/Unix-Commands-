#! /bin/bash
#simplecalc: is a command which can +, -, /, X between any two chosen numbers
#if user wants to exit the command needs to type #
#author Amrit Sarai Nov 2017
echo "********************Welcome to the Simple Calculator*********************"
echo "**********If you would like to leave the calculator type # ************  "
echo "****************You can +, -, /, X between two numbers*******************"

while true
do
     read -p "Number : " number1
     #exits the loop
     if [[  $number1 == "#" ]]
     then
         echo "Goodbye!"
         break
     fi

     read -p "Would you like to + -, /, X: " operator
     #exits the loop
     if [[ $operator == "#" ]]
     then
         echo "Goodbye!"
         break
     fi

     read -p "Number: " number2
     #exits the loop
     if [[ $number2 == "#" ]]
     then
         echo "Goodbye!"
         break
     fi

     # if the user chooses an operator
     if [[ $operator == "-" ]]
     then
           let answer="$number1 - $number2"
           echo "The answer is: $answer"

     elif [[ $operator == "+" ]]
     then
          let answer="$number1 + $number2"
          echo "The answer is: $answer"

     elif [[ $operator == "/" ]]
     then
          let answer="$number1/$number2"
          echo "The answer is: $answer"

     elif [[ $operator == "X" ]]
     then
         let answer="$number1 * $number2"
         echo "The answer is: $answer"

     #if something goes wrong issue a help statement
     else
          echo "You didn't enter the right operator"
          echo "NOTE: You need to enter a operator to calculate a sum"
          echo "You also need to enter numbers when asked"
          echo "If you would like to leave press #"
     fi
done
