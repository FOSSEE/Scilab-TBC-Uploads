clear
flag=1
mode(-1)
clc

printf("Example 5    :                          Print all the system call errors with perror \n")
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
i=i+1;f(i)='/* Program: show_errno.c -- Displaying system call errors with perror */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <fcntl.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, char **argv) {'
i=i+1;f(i)='    int fd;'
i=i+1;f(i)='    char* filename = '+ascii(34)+'non_existent_file'+ascii(34)+'; /* This file must not exist */'
i=i+1;f(i)='    '
i=i+1;f(i)='    fd = open(filename, O_RDONLY);        /* File descriptor assigned first */'
i=i+1;f(i)='    if (fd == -1)                         /* and then checked */'
i=i+1;f(i)='        perror('+ascii(34)+'no_existent_file'+ascii(34)+');'
i=i+1;f(i)='    if ((fd = open('+ascii(34)+'/etc/shadow'+ascii(34)+',O_RDONLY)) == -1) /* bOTH COMBINED HERE */'
i=i+1;f(i)='        perror('+ascii(34)+'shadow'+ascii(34)+');'
i=i+1;f(i)='    if ((fd = open('+ascii(34)+'show_errno.c'+ascii(34)+',O_WRONLY | O_CREAT | O_EXCL, 0744)) == -1)'
i=i+1;f(i)='        perror('+ascii(34)+'show_errno.c'+ascii(34)+');'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
n=i
printf("\n\n$ cat show_errorno.c      # to open the file emp.lst")
halt(' ')
u=mopen('show_errorno.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc
halt('')
disp('$ cc show_errorno.c')
halt("")
disp("$ a.out")
halt("")
printf("non_existent_file: No such file or directory\nshadow: Permission denied\nshow_errno.c: File exists\n ")
halt("")
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


