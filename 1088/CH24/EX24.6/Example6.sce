clear
flag=1
mode(-1)
clc

printf("Example 6    :    Show the effect of using the execl series \n")
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
i=i+1;f(i)='/* Program: execl.c -- Uses execl to run wc */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    execl('+ascii(34)+'/bin/wc'+ascii(34)+','+ascii(34)+'wc'+ascii(34)+','+ascii(34)+'-l'+ascii(34)+','+ascii(34)+'-c'+ascii(34)+','+ascii(34)+'/etc/passwd'+ascii(34)+',(char*) 0);'
i=i+1;f(i)='    printf('+ascii(34)+'execl error\n'+ascii(34)+');'
i=i+1;f(i)='}'
n=i
    

printf("\n\n$ cat execl.c      # to open the file emp.lst")
halt(' ')
u=mopen('execl.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc execl.c")
 halt(' ')
 printf("$ a.out                      ")
 halt(' ')
 printf("           166      9953   /etc/passwd")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


