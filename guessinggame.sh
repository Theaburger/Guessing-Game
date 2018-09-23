#!/usr/bin/env bash
#file: guessinggame.sh

function checkguess() {
local correct=false

  while [[ "$correct" == "false" ]]; do
    echo "How many files are in the current directory?"
    read guess

    #Check to see if guess is a valid integer
    while ! [[ "$guess" =~ ^[0-9]+$ ]]; do
      echo "Please enter a valid integer."
      read guess
    done

    #Lets guesser know to guess higher or lower
    if [[ $guess -lt $numfiles ]]; then
      echo "You guessed too low. Guess again."
    elif [[ $guess -gt $numfiles ]]; then
      echo "You guessed too high. Guess again."
    else
      correct=true
    fi
  done
}

#main body of code
numfiles=$(ls|wc -l)
checkguess $numfiles
echo "Congrats! You correctly guessed the number of directories."


#make file:
# echo "##Guessing Game" > README.md
# date >> README.md
