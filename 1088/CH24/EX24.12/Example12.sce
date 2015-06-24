clear
flag=1
mode(-1)
clc

printf("Example 12    :    Show the effect of sharing a pipe between two processes from parent to child \n")
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
i=i+1;f(i)='/* Program: pipe.c -- Shares a pipe between two processes for data to flow from parent to child*/'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *, int);'
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    int n,fd[2];       /* fd[2] to be filled up by pipe() */'
i=i+1;f(i)='    char buf[100];     /* Buffer to be used by read() */'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (pipe(fd) < 0)  /* fd[0] is read end */'
i=i+1;f(i)='    quit('+ascii(34)+'pipe'+ascii(34)+',1);    /* fd[1] is write end */'
 i=i+1;f(i)='   '
i=i+1;f(i)='    switch (fork()) {    /* Pipe has four descriptors now */'
i=i+1;f(i)='    case -1:quit('+ascii(34)+'Fork error'+ascii(34)+',2);'
i=i+1;f(i)='     case 0:close(fd[1]); /* CHILD-Close write end of pipe */'
i=i+1;f(i)='            n=read(fd[0],buf,100);  /* and read from its read end */'
i=i+1;f(i)='            write(STDOUT_FILENO,buf,n);'
i=i+1;f(i)='            break;'
i=i+1;f(i)='     default: close(fd[0]);  /*PARENT-Close read end of pipe */'
i=i+1;f(i)='            write(fd[1],'+ascii(34)+'Writing to pipe\n'+ascii(34)+', 16); /* write to write end */'
i=i+1;f(i)='     }'
i=i+1;f(i)='     exit(0);'
i=i+1;f(i)='}'
n=i
 

printf("\n\n$ cat pipe.c      # to open the file emp.lst")
halt(' ')
u=mopen('pipe.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc shell.c")
 halt(' ')
 printf("$ a.out ")
 halt(' ')
 printf("Writing to pipe")
 
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


