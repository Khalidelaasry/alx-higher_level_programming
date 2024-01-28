#!/bin/bash

# Set your GitHub username and repository name
USERNAME="your_username"
REPO_NAME="your_repository"

# Function to generate a random file name with a .c extension
generate_random_filename() {
  echo "$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 8 | head -n 1).c"
}

# Create 45 files with random names
for i in {1..71}
do
    FILENAME=$(generate_random_filename)
    touch "$FILENAME"
    echo "// This is $FILENAME" >> "$FILENAME"
done

# Add, commit, and push each file
for FILENAME in *.c
do
    git add "$FILENAME"
    git commit -m "Add $FILENAME"
    git push origin main
done
