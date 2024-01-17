import os
import subprocess

# Set your GitHub username and repository name
USERNAME = "your_username"
REPO_NAME = "your_repository"

# Create 45 files
for i in range(1, 56):
    file_name = f"file{i}.py"
    content = f'# This is file {i}\n\nprint("Hello from file {i}")'

    with open(file_name, 'w') as file:
        file.write(content)

# Add, commit, and push each file
for i in range(1, 56):
    file_name = f"file{i}.py"
    commit_message = f"Add {file_name}"

    subprocess.run(['git', 'add', file_name])
    subprocess.run(['git', 'commit', '-m', commit_message])
    subprocess.run(['git', 'push', 'origin', 'main'])

