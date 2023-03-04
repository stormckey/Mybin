#! /bin/bash
mkdir $1
cd $1
touch $1"."$2
touch "test.sh"
touch "data.txt"
echo "#!/bin/zsh" > test.sh
echo "g++ "$1"."$2 >> test.sh
echo "./a.out < data.txt" >> test.sh
if [ "$2" = "cpp" ]; then
    echo "#include <iostream>" >$1".cpp"
    echo "using namespace std;" >> $1".cpp"
fi
if [ "$2" = "c" ]; then
    echo "#include <stdio.h>" >$1".c"
fi
git init
touch .gitignore
echo "*.out" >.gitignore
git add .
git commit -m "Initialize the dictionary from start.sh"