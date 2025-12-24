#!/usr/bin/env bash

# Function to count files
count_files() {
  ls -1 | wc -l
}

correct=$(count_files)

echo "Guess how many files are in the current directory."

while true
do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $correct ]]
  then
    echo "Too low. Try again."
  elif [[ $guess -gt $correct ]]
  then
    echo "Too high. Try again."
  else
    echo "🎉 Congratulations! You guessed correctly."
    break
  fi
done
