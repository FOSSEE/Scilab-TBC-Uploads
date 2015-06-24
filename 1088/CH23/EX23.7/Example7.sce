clear
flag=1
mode(-1)
clc

printf("Example 7    :               Show the method of directory navigation with chdir and getcwd \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
halt(' ')
disp("1.These programs are part of systems programming in Unix and the commands have NO EQUIVALENT IN SCILAB")
halt(' ')
disp('2.However if possible some selected programmes have been TRIED TO BE IMPLEMENTED')
halt("")
disp('3.For most of the programmes whose equivalent is NOT THERE IN SCILAB,only the output has been printed as given in the textbook with no interactive input as in the programme below')
halt("")
disp("4.However the .c files which are displayed here are also made into a seperate file.If you are a unix user then try compiling and running the programme with gcc or cc compiler")
disp("5.The inconvenience is regretted.")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")
i=0
i=i+1;f(i)='/* Program: dir.c -- Directory navigation with chdir and getcwd */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#define PATH_LENGTH 200'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *,int );   /* Prototyoe definition */'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, char **argv) {'
i=i+1;f(i)='    char olddir[PATH_LENGTH + 1];      /* Extra character for null */'
i=i+1;f(i)='    char newdir[PATH_LENGTH + 1];'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (getcwd(olddir, PATH_LENGTH) == -1) /* Getting current directory */'
i=i+1;f(i)='        quit('+ascii(34)+'getcwd'+ascii(34)+', 1);'
i=i+1;f(i)='    printf('+ascii(34)+'pwd: %s\n'+ascii(34)+',olddir);'
i=i+1;f(i)='    '
i=i+1;f(i)='    if ((chdir(argv[1]) == -1))       /* Changing to another directory */'
i=i+1;f(i)='        quit('+ascii(34)+'chdir'+ascii(34)+', 2);'
i=i+1;f(i)='    printf('+ascii(34)+'cd: %s\n'+ascii(34)+', argv[1]);'
i=i+1;f(i)='    '
i=i+1;f(i)='    getcwd(newdir, PATH_LENGTH);      /* getting new directory */'
i=i+1;f(i)='    printf('+ascii(34)+'pwd: %s\n'+ascii(34)+',newdir);'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
n=i
printf("\n\n$ cat dir.c      # to open the file emp.lst")
halt(' ')
u=mopen('dir.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc dir.c")
 halt(' ')
 disp("#  Please enter the name of the directory which you want to go as the command line argument")
 disp("")
nam=input("$ a.out   ",'s')
 halt(' ')
 pwd
 back=ans
 printf("pwd:  %s\n",back)
 printf("cd:  %s\n",nam)
 printf("pwd: %s                                     Change of directory inside program\n",nam)
 cd(nam)
 halt("")
 printf("$ pwd \n")
 cd(back)
 printf("%s                                    ...is not available outside it\n",back)

halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


