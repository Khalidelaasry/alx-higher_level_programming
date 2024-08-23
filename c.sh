#!/bin/bash

# Set your GitHub username and repository name
USERNAME="your_username"
REPO_NAME="your_repository"


for i in {0..46}
do
    touch "file${i}.c"
    echo "// This is file ${i}" >> "file${i}.c"
done

# Add, commit, and push each file
for i in {0..46}
do
    git add "file${i}.c"
    git commit -m "All tasks finished! 🏁"
    git push 
done
