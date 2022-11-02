FILE=README.md

gitfunc() {
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
    fi
}

gitfunc
echo "success"