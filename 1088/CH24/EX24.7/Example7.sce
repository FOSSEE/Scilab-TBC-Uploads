clear
flag=1
mode(-1)
clc

printf("Example 7    :    Show the effect of using the execv series \n")
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
i=i+1;f(i)='/* Program: execv.c -- Stuffs all command line arguments to an an array to be used with execv */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='int main(int argc, char **argv) {'
i=i+1;f(i)='    char *cmdargs[] = { '+ascii(34)+'grep'+ascii(34)+', '+ascii(34)+'-i'+ascii(34)+', '+ascii(34)+'-n'+ascii(34)+', '+ascii(34)+'SUMIT'+ascii(34)+', '+ascii(34)+'/etc/passwd'+ascii(34)+', NULL };'
i=i+1;f(i)='    execv('+ascii(34)+'/bin/grep'+ascii(34)+', cmdargc);          /* Execute another program*/'
i=i+1;f(i)='    printf('+ascii(34)+'execv error\n'+ascii(34)+');'
i=i+1;f(i)='}'
n=i;

    

printf("\n\n$ cat execv.c      # to open the file emp.lst")
halt(' ')
u=mopen('execv.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc execv.c")
 halt(' ')
 printf("$ a.out                      ")
 halt(' ')
 printf("15:sumit:x:102:10::/users1/home/staff/sumit:/usr/bin/bash")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


