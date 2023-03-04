# My bin
Useful tools I made to help working.
Add this file to PATH for easier accessing. Add this in ~/.zshrc :
```
PATH = $PATH:<path>
```
Where <path> is your path of the bin file.
## start.sh
This script can create a dictionary for a C/Cpp work and put you into the dictionary.  
```
source start.sh <workname> <type>
```
Where \<workname> is an arbitrary string and \<type> can be c or cpp.
Inside the dictionary are :
- \<workname>.\<type> : source code file
- data.txt : your input
- test.sh : A script to compile and run you code with input from data.txt
- .gitignore : ignore *.out and .DS_Store
- An git repository with all the above things commited as the first snapshot.  

For your convenience ,you can add the alias to shorten the command. Add this in ~/.zshrc :
```
alias start="source start.sh"
```