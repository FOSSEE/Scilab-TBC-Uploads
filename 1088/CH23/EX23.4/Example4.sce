clear
flag=1
mode(-1)
clc

printf("Example 4    :                          Print all the error messages present in the system using strerror \n")
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
i=i+1;f(i)='/* Program: show_errors.c --Uses strerror to print all error messages */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    int i;'
i=i+1;f(i)='    extern int sys_nerr;          /* Total number of error messages */'
i=i+1;f(i)='    '
i=i+1;f(i)='    for (i=0; i < sys_nerr; i++)'
i=i+1;f(i)='         printf('+ascii(34)+'%d: %s\n'+ascii(34)+', i, strerror(i));'
i=i+1;f(i)='    printf('+ascii(34)+'Number of errors available: %d\n'+ascii(34)+', sys_nerr);'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
n=i

printf("\n\n$ cat show_errors.c      # to open the file emp.lst")
halt(' ')
u=mopen('show_errors.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc
halt('')
disp('$ cc show_errors.c')
halt("")
disp("$ a.out")
halt("")
printf("0: Error 0\n1: Not owner\n2:No such file or directory\n3: No such process\n4: Interrupted system call\n5: I/O error\n13: Permission denied\n")
halt("")
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


