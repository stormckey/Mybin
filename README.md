# My bin
Useful tools I made to help working
## start.sh
Create a dictionary for a C/Cpp work.  
```
source ./start.sh <workname> <type>
```
\<workname> is an arbitrary string and \<type> can be c or cpp.You can use allias to shorten the command.
Inside the dictionary are :
- \<workname>.\<type> : source code file
- data.txt : your input
- test.sh : A script to compile and run you code with input from data.txt
- .gitignore : ignore *.out and .DS_Store
- An git repository with all the above things commited as the first snapshot.
