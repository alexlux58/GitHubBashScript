#!/usr/bin/env bash

echo "What do you want to put in the README.md"
read text
echo "# $text" >> README.md
git init
git add .
echo "What do you want to put in the commit message"
read message
git commit -m "$message"
git branch -M main
git remote add origin https://github.com/alexlux58/WebsitePortfolio.git
git push -u origin main


# # echo "What do you want to put in the README.md"
# text="$1"
# echo "# $text" >> README.md
# git init
# git add . 
# # echo "What do you want to put in the commit message"
# message="$2"
# git commit -m "$message"
# git branch -M main
# git remote add origin https://github.com/alexlux58/WebsitePortfolio.git
# git push -u origin main