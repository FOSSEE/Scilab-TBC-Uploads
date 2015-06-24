clear
flag=1
mode(-1)
clc

printf("Example 1    :               Show the method of showing all the type of process IDs \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
halt(' ')
disp("1.These programs are part of systems programming PURELY in Unix and the commands have NO EQUIVALENT IN SCILAB")
halt(' ')
disp("2.However the .c files which are displayed here are also made into a seperate file.If you are a unix user then try compiling and running the programme with gcc or cc compiler")
halt(' ')
disp("3.The outputs displayed here are just MOCK OUTPUTS which are DISPLAYED IN THE TEXTBOOK")
halt(' ')
disp("4.The inconvenience is regretted.")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")
i=0
i=i+1;f(i)='/* Program: process.c -- Lists process and user credentials The PID, PPID, real and effective UIDs and GIDs */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    printf('+ascii(34)+'PID : %4d,PPDI : %4d\n'+ascii(34)+',getpid(),getppid());'
i=i+1;f(i)='    printf('+ascii(34)+'UID : %4d, GID : %4d\n'+ascii(34)+',getuid(),getgid());'
i=i+1;f(i)='    printf('+ascii(34)+'EUID : %4d,EGID : %4d\n'+ascii(34)+',geteuid(),getegid());'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
n=i

printf("\n\n$ cat process.c      # to open the file emp.lst")
halt(' ')
u=mopen('process.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc process.c")
 halt(' ')
 printf("$ a.out")
 halt(' ')
 printf("PID : 1035, PPID: 1028\nUID :  102,  GID:  10\nEUID: 102, EGID:  10\n")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


