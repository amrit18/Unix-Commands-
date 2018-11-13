#! /bin/bash
# converter: Is a command which can convert celsius to fahrenheit or
#fahrenheit to celsius
# author Amrit Sarai Nov 2017

echo "***************Welcome to the temperature converter.********************"
echo "****************To exit the the converter press #.**********************"

while true
do
   echo "Celsius to Fahrenheit: Enter C"
   echo "Fahrenheit to Celsius: Enter F"
   read corf

   #chooses an operator
   if [[ $corf == "C" ]]
   then
       #read C then converts to Fahrenheit
       read -p  "Enter temp in Celsius: " Celsius
       let "Fahrenheit=Celsius *9/5+32"
       echo "$Celsius C = $Fahrenheit F"

   elif [[ $corf == "F" ]]
   then
      #reads F then converts to Celsius
      read -p "Enter temp in Fahrenheit: " Fahrenheit
      let "Celsius=(Fahrenheit -32) *5/9"
      echo "$Fahrenheit F = $Celsius C"

   #if the variable is a # then leaves the loop
   elif [[ $corf == "#" ]]
   then
      echo "Goodbye!"
      break

   elif [[ $Celsius == "#" ]]
   then
       echo "Goodbye!"
       break

   elif [[ $Fahrenheit == "#" ]]
   then
       echo "Goodbye!"
       break

   #if something goes wrong issue a help statemnt
   else
       echo "************************Help******************************"
       echo "You have to type C or F when choosing conversion method."
       echo "Note the letter must be in cap lock."
       echo "You also need to enter a value when it asks you the temp."
       echo "To exit the converter press #"
   fi
done
