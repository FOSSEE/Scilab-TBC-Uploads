clear
flag=1
mode(-1)
clc

printf("Example 13    :    Show the method of running two programs in a pileline \n")
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
i=i+1;f(i)='/* Program pipe2.c -- Runs two programs in a pipeline Child runs cat, parent runs tr */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *message,int exit_status);'
i=i+1;f(i)='int main(void) { '
i=i+1;f(i)='    int fd[2];             /* To be fille dup by pipe() */'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (pipe(fd) < 0)      /* Now have four descriptors for pipe */'
i=i+1;f(i)='        quit('+ascii(34)+'pipe'+ascii(34)+', 1);'
i=i+1;f(i)='    switch (fork()) {'
i=i+1;f(i)='           case -1: quit('+ascii(34)+'fork'+ascii(34)+', 2);'
i=i+1;f(i)='           '
i=i+1;f(i)='           case 0: close(fd[0]); /* CHILD - Close read end first */'
i=i+1;f(i)='                   dup2(fd[1], STDOUT_FILENO); /* Connect stdout to write end */'
i=i+1;f(i)='                   close(fd[1]);      /* and close original descriptor */'
 i=i+1;f(i)='                  execlp('+ascii(34)+'cat'+ascii(34)+', '+ascii(34)+'cat'+ascii(34)+','+ascii(34)+'/etc/hosts.equiv'+ascii(34)+', (char *) 0);'
i=i+1;f(i)='                   '
i=i+1;f(i)='           default: close(fd[1]);     /* PARENT -- Close write end first */'
i=i+1;f(i)='                    dup2(fd[0], STDIN_FILENO);   /* Connect stdin to read end */'
i=i+1;f(i)='                    close(fd[0]);        /* and close original descriptor */'
i=i+1;f(i)='                    execlp('+ascii(34)+'tr'+ascii(34)+', '+ascii(34)+'tr'+ascii(34)+', '+ascii(34)+''+ascii(39)+'[a-z]'+ascii(39)+''+ascii(34)+','+ascii(34)+''+ascii(39)+'[A-Z]'+ascii(39)+''+ascii(34)+',(char *) 0);'
i=i+1;f(i)='                    quit('+ascii(34)+'tr'+ascii(34)+', 4);'
i=i+1;f(i)='}'
i=i+1;f(i)='}'
n=i
 

printf("\n\n$ cat pipe2.c      # to open the file emp.lst")
halt(' ')
u=mopen('pipe2.c','wt')
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
 printf("SATURN\nEARTH\nMERCURY\nJUPITER\n")
 
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


