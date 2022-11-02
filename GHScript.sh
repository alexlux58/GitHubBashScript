#!/bin/bash

gitCreateNewRepoFunc() {
    FILE=README.md
    if [ -f "$FILE" ]; then
        return
    else
        echo "Please enter what you want to put in your README.md"
        read readme
        echo "Please enter your commit message"
        read message
        echo "# $readme" >> README.md
        git init
        git add .
        git commit -m "$message"
        git branch -M main
        echo "Please enter your GitHub repositories link"
        read link
        git remote add origin "$link"
        git push -u origin main
    fi
}

gitPushExistingRepoFunc() {
    echo "Please enter your GitHub repositories link"
    read link
    git remote add origin "$link"
    git branch -M main
    git push -u origin main
}

echo "Do you want to (Enter a 1 or 2):\n"
echo "1. Create a new repository"
echo "2. Push an existing repository"
read choice

if [[ $choice == 1 ]]; then
    gitCreateNewRepoFunc
elif [[ $choice == 2 ]]; then
    gitPushExistingRepoFunc
else
    echo "Invalid choice"
fi

echo "finished"