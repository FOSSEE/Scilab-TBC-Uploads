clear
flag=1
mode(-1)
clc

printf("Example 10    :    Show the effect of using dup command to achieve both input and output redirection\n")
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
i=i+1;f(i)='/* Program: dup.c -- Uses dup to achieve both input and output redirection Closes standard streams first before using dup */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)='#include <sys/stat.h>'
i=i+1;f(i)='#include <fcntl.h>'
i=i+1;f(i)='#define MODE600 (S_IRUSR | S_IWUSR)'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc,char **argv) {'
i=i+1;f(i)='    int fd1,int fd2;'
i=i+1;f(i)='    fd1 = open(argv[1],O_RDONLY);'
i=i+1;f(i)='    fd2 = open(argv[2], O_WRONLY | O_CREAT |O_TRUNC, MODE600);'
i=i+1;f(i)='    '
i=i+1;f(i)='    close(STDIN_FILENO);    /*This should return descriptor 0 */'
i=i+1;f(i)='    dup(fd1);'
i=i+1;f(i)='    close(STDOUT_FILENO);   /*This should return descriptor 1 */'
i=i+1;f(i)='    dup(fd2);'
i=i+1;f(i)='    '
i=i+1;f(i)='    execvp(argv[3], &argv[3]);   /* Execute any filter */'
i=i+1;f(i)='    printf('+ascii(34)+'Failed to exec filter'+ascii(34)+');'
i=i+1;f(i)='}'
n=i
    

printf("\n\n$ cat dup.c      # to open the file emp.lst")
halt(' ')
u=mopen('dup.c','wt')
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
 printf("$ a.out   /etc/passwd   passwd.cnt  wc  -1")
 halt(' ')
 printf("cat passwd.cnt")
halt(' ')
printf("        37   /etc/passwd")
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


