#!/bin/sh

# 必须在用户目录下执行，以获取用户路径！
userPath=$PWD

#拼接目录
userDataPath="$userPath/Library/Developer/Xcode/UserData"
codeSnippetsPath="$userPath/Library/Developer/Xcode/UserData/CodeSnippets"

fileDir=`dirname $0`    #文件路径


## 如果目录不存在，创建目录
if [ -d $codeSnippetsPath ]
then
    echo "目录已存在"
else
    echo "目录不存在"
    cd $userDataPath

    mkdir CodeSnippets #创建目录
fi


## 遍历代码片段文件夹，将代码片段复制到目标文件夹
sourcePath="$fileDir/CodeSnippets"
if [ -d $sourcePath ]
then
    echo "hahah"
    cp -rp $sourcePath $userDataPath

fi

# 打开代码片段文件夹
open ~/Library/Developer/Xcode/UserData/