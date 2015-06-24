clear
flag=1
mode(-1)
clc

printf("Example 5    :    Show the effect of creating an orphan by letting child sleep for 2 minutes where parent dies immediately \n")
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
i=i+1;f(i)='/* Program: orphan.c -- Creates an orphan by letting child sleep for 2 minutes.'
i=i+1;f(i)='                        Parent doesn'+ascii(39)+'t call wait and dies immediately */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    int pid;'
i=i+1;f(i)='    if ((pid = fork()) > 0)     /* Parent */'
i=i+1;f(i)='    exit(10);                   /* Parent exits without calling wait */'
i=i+1;f(i)='    else if (pid == 0) {        /* Child */'
i=i+1;f(i)='    sleep(2);                   /* Lets parent die in this time frame */'
i=i+1;f(i)='    printf('+ascii(34)+'CHILD: Adopted by init now, PPID: %d\n'+ascii(34)+',getppid());'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
i=i+1;f(i)='}'
n=i
    

printf("\n\n$ cat orphan.c      # to open the file emp.lst")
halt(' ')
u=mopen('orphan.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc orphan.c")
 halt(' ')
 printf("$ a.out                      ....no response for 2 seconds...")
 halt(' ')
 sleep(2000)
 printf("CHILD: Adopted by init now, PPID: 1")
 halt(' ')
 printf("$ echo $?")
 halt(' ')
 printf("10")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


