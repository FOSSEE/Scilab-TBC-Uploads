clear
flag=1
mode(-1)
clc

printf("Example 11    :    Show the effect of opening files int the parent and the child to reassign descriptors \n")
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
i=i+1;f(i)='/* Program: dup2.c -- Opens files in the parent and uses dup2 in the child to reassign the descriptors */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)='#include <sys/stat.h>'
i=i+1;f(i)='#include <fcntl.h>'
i=i+1;f(i)='#include <wait.h>'
i=i+1;f(i)=''
i=i+1;f(i)='#define OPENFLAGS (O_WRONLY | O_CREAT | O_TRUNC)'
i=i+1;f(i)='#define MODE600 (S_IRUSR | S_IWUSR)'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *message, int exit_status) ;'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc,char **argv) {'
i=i+1;f(i)='    int fd1, fd2, rv, exit_status;'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (fork() == 0) {       /* Child */'
i=i+1;f(i)='    if ((fd1 = pen(argv[1], O_RDONLY)) == -1)'
i=i+1;f(i)='    quit('+ascii(34)+'Error in opening file for reading\n'+ascii(34)+', 1);'
i=i+1;f(i)='    if ((fd2 = open(argv[2], OPENFLAGS, MODE600) == -1)'
i=i+1;f(i)='    quit('+ascii(34)+'Error in opening file for writing\n'+ascii(34)+',1);'
i=i+1;f(i)='    dup(fd1,0);         /* Closes standard input simultaneously */'
i=i+1;f(i)='    dup(fd2,1);         /* Closes standard output simultaneously*/'
i=i+1;f(i)='    execvp(argv[3], &argv[3]);  /* Execute command */'
i=i+1;f(i)='    quit('+ascii(34)+'exec error'+ascii(34)+', 2);'
i=i+1;f(i)='} else {         /*parent */'
i=i+1;f(i)='wait(&rv);       /* Or use waitpid(-1,&rv, 0) */'
i=i+1;f(i)='printf('+ascii(34)+'Exit status: %d\n'+ascii(34)+',WEXITSTATUS(rv));'
i=i+1;f(i)='}'
i=i+1;f(i)='}'
n=i    

    

printf("\n\n$ cat dup2.c      # to open the file emp.lst")
halt(' ')
u=mopen('dup2.c','wt')
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
 printf("$ a.out /etc/passwd passwd.cnt grep joker")
 halt(' ')
 printf("Exit status: 1                            # joker not found in /etc/passwd")
 halt("a.out /etc/passwd    passwd.cnt   grep sumit")
printf("Exit status: 0                            # sumit found in /etc/passwd ") 
halt(' ')
printf("$ cat passwd.cnt")
halt(' ')
printf("sumit:x:500:500:sumitabha das:/home/sumit:/bin/bash")
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


