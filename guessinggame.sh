#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    ls -l | grep "^-" | wc -l
}

# Main function
main() {
    actual=$(get_file_count)
    guess=-1

    while [ $guess -ne $actual ]; do
        read -p "Guess how many files are in the current directory: " guess

        if [ $guess -lt $actual ]; then
            echo "Your guess is too low."
        elif [ $guess -gt $actual ]; then
            echo "Your guess is too high."
        else
            echo "Congratulations! You guessed correctly!"
        fi
    done
}

# Run the main function
main
