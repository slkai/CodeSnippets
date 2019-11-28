#! /bin/bash

cp -r ~/Library/Developer/Xcode/UserData/CodeSnippets/ ./CodeSnippets/

git add -A

git commit -m "update code snippets"

git push