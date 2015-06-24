clear
flag=1
mode(-1)
clc

printf("Example 2    :               Show the method of showing PID,PPID in both parent and child process \n")
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
i=i+1;f(i)='/* Program: fork.c -- A simple fork Shows PID,PPID in both parent and child*/'
i=i+1;f(i)=''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <sys/types.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    pid_t pid;'
i=i+1;f(i)='    '
i=i+1;f(i)='    printf('+ascii(34)+'Before forking\n'+ascii(34)+');'
i=i+1;f(i)='    pid = fork();        /* Replicates current processes */'
i=i+1;f(i)='    '
i=i+1;f(i)='    if(pid >0) {         /* In the parent process; make sure */'
i=i+1;f(i)='    sleep(1);            /* That the parent does not die before child */'
i=i+1;f(i)='    printf('+ascii(34)+'PARENT -- PID: %d PPID %d, CHILD PID: %d\n'+ascii(34)+',getpid(),getppid(),pid);}'
i=i+1;f(i)='    '
i=i+1;f(i)='    else if (pid == 0)    /* In the child process */'
i=i+1;f(i)='         printf('+ascii(34)+'CHILD -- PID: %d PPID: %d\n'+ascii(34)+',getpid(),getppid());'
i=i+1;f(i)='    else {                 /* pid must be -1 here */'
i=i+1;f(i)='         printf('+ascii(34)+'Fork error\n'+ascii(34)+');'
i=i+1;f(i)='         exit(1);}'
i=i+1;f(i)='    printf('+ascii(34)+'Both process continue from here\n'+ascii(34)+');  /* In both processes */'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
n=i    

printf("\n\n$ cat fork.c      # to open the file emp.lst")
halt(' ')
u=mopen('fork.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc fork.c")
 halt(' ')
 printf("$ a.out")
 halt(' ')
 printf("Before forking\nCHILD -- PID: 1556 PPID: 1555\nBoth processes continue from here         # This statement runs in child\nPARENT -- PID: 1555 PPID: 1450,CHILD PID: 1556\nBoth processes continue from here          ...as well as in parent\n")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


