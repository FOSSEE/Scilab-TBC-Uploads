clear
flag=1
mode(-1)

printf("Example 4    :    Show the effect of obtaining child termination status by WEXITSTATUS \n")
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
i=i+1;f(i)='/* Program: wait.c -- Uses wait to obtain child'+ascii(39)+'s termination status.The WEXITSTATUS macro fetches the exit status */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <fcntl.h>'
i=i+1;f(i)='#include <sys/wait.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, char **argv) {'
i=i+1;f(i)='    int fd,exitstatus;'
i=i+1;f(i)='    int exitval = 10;   /* Value to be returned by child */'
i=i+1;f(i)='    '
i=i+1;f(i)='    fd= open(argv[1], O_WRONLY | O_CREAT | O_TRUNC, 0644);'
i=i+1;f(i)='    write(fd, '+ascii(34)+'Original process writes\n'+ascii(34)+',24); /* First write */'
    i=i+1;f(i)=''
i=i+1;f(i)='    switch(fork()) {'
i=i+1;f(i)='       case 0:'
i=i+1;f(i)='            write(fd,'+ascii(34)+'Child writes\n'+ascii(34)+',13);       /* Second write */'
i=i+1;f(i)='            close(fd);        /*Closing here doesn'+ascii(39)+'t affect parent'+ascii(39)+'s copy */'
i=i+1;f(i)='            printf('+ascii(34)+'CHILD: Terminating with exit value %d\n'+ascii(34)+', exitval);'
i=i+1;f(i)='            exit(exitval);   /* Can also use_exit(exitval) */'
i=i+1;f(i)='            '
i=i+1;f(i)='            default:'
i=i+1;f(i)='                    wait(&exitstatus);  /* Waits for child to die */'
i=i+1;f(i)='                    printf('+ascii(34)+'PARENT: Child terminated with exit value %d\n'+ascii(34)+',WEXITSTATUS(exitstatus));'
i=i+1;f(i)='                                                           /*Extracting exit status */'
i=i+1;f(i)='                    write(fd, '+ascii(34)+'Parent writes\n'+ascii(34)+', 14);      /* Third write */'
i=i+1;f(i)='                    exit(20);           /* Value returned to shell; try echo $? */'
i=i+1;f(i)='                    }'
i=i+1;f(i)='}'
n=i
    

printf("\n\n$ cat wait.c      # to open the file ")
halt(' ')
u=mopen('wait.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc wait.c")
 halt(' ')
 printf("$ a.out  foo")
 halt(' ')
 printf("CHILD: Terminating with exit value 10\nPARENT: Child terminated with exit value 10\n")
 halt(' ')
 printf("$ cat foo ")
 halt(' ')
 printf("Original process writes\nChild writes\nParent writes\n")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


