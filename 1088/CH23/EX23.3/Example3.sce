clear
flag=1
mode(-1)
clc

printf("Example 3    :               Show the effect of umask on permissions of a file \n")
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
i=i+1;f(i)='/* Program: umask.c -- Changes umask twice and checks effect on permissions */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <fcntl.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    mode_t old_mode,new_mode;'
i=i+1;f(i)='    '
i=i+1;f(i)='    old_mode = umask(0);                     /* No mask */'
i=i+1;f(i)='    printf('+ascii(34)+'Previous umask value: %o\n'+ascii(34)+', old_mode);'
i=i+1;f(i)='    '
i=i+1;f(i)='    open('+ascii(34)+'foo1'+ascii(34)+',O_RDONLY | O_CREAT, 0777);  /* Create file using new mask */'
i=i+1;f(i)='    umask(old_mode);                        /* Revert to previous mask */'
i=i+1;f(i)='    open('+ascii(34)+'foo2'+ascii(34)+',O_RDWR | O_CREAT, 0764);    /* Create file using old mask */'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='} '
n=i

printf("\n\n$ cat umask.c      # to open the file emp.lst")
halt(' ')
u=mopen('umask.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc umask.c")
 halt(' ')
 printf("$ a.out")
 halt(' ')
 printf("Previous umask value: 22")
 halt(' ')
 printf("$ ls -l foo?")
 halt(' ')
disp("-rwxrwxrwx    1  sumit     sumit       0 Dec    1  12:01    foo1")
disp("-rwxr--r--    1  sumit     sumit       0 Dec    1  12:01    foo2")
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


