#!/bin/bash

# Set your GitHub username and repository name
USERNAME="your_username"
REPO_NAME="your_repository"

# Create 33 files
for i in {1..45}
do
    touch "file${i}.py"
    echo "// This is file ${i}" >> "file${i}.py"
done

# Add, commit, and push each file
for i in {1..45}
do
    git add "file${i}.py"
    git commit -m ":0"
    git push origin main
done

