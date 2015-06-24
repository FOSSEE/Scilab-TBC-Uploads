clear
flag=1
mode(-1)
clc

printf("Example 1    :               Show the method of copying files with the read and write system calls \n")
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
i=i+1;f(i)='/* Program ccp.c -- Copies a file with the read and write system calls */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <fcntl.h>          /* For O_RDONLY , O_WRONLY , O_CREAT etc. */'
i=i+1;f(i)='#include <sys/stat.h>       /* for S_IRUSR , S_IWUSR , S_IRGRP etc. */'
i=i+1;f(i)='#define BUFSIZE 1024        /* May not be the rigth size here */'
i=i+1;f(i)=''
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    int fd1, fd2;           /* File descriptors for read and write  */'
i=i+1;f(i)='    int n;                  /* Number of characters returned by read */'
i=i+1;f(i)='    char buf[BUFSIZE];      /* BUFSIZE should be carefully chosen */'
i=i+1;f(i)='    fd1 = open('+ascii(34)+'/etc/passwd'+ascii(34)+',O_RDONLY);'
i=i+1;f(i)='    fd2 = open('+ascii(34)+'passwd.bak'+ascii(34)+',O_WRONLY | O_CREAT | O_TRUNC ,'
i=i+1;f(i)='               S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH); /* Mode 664*/'
i=i+1;f(i)='    '
i=i+1;f(i)='    while ((n = read(fd1, buf, BUFSIZE)) > 0)   /* Return value of read is */'
i=i+1;f(i)='        write(fd2, buf, n);                     /* used by write as argument */'
i=i+1;f(i)='        '
i=i+1;f(i)='    close(fd1);'
i=i+1;f(i)='    close(fd2);'
i=i+1;f(i)='    exit(0);               /* This would have closed all file descriptors */'
i=i+1;f(i)='}'
n=i
printf("\n\n$ cat ccp.c      # to open the file emp.lst")
halt(' ')
u=mopen('ccp.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc ccp.c")
 halt(' ')
 printf("$ a.out")
 halt(' ')
 printf("$ cmp /etc/passwd passwd.bak")
 halt(' ')
if getos()=='Linux' then
unix_w('cc ccp.c;a.out;cmp /etc/passwd passwd.bak')
else
 printf("$ _                                          # Prompt returns-files identical")
 halt(' ')
end

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


