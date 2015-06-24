clear
flag=1
mode(-1)
clc

printf("Example 8    :    Show the effect of using the exec command to run a unix command \n")
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
i=i+1;f(i)='/* Program: exec_and_fork.c -- Uses fork, exec and wait to run a unix command */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <wait.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc,char **argv) {'
i=i+1;f(i)='    int returnval;           /* Used by wait*/'
i=i+1;f(i)='    '
i=i+1;f(i)='    switch(fork()) {'
i=i+1;f(i)='          case 0:           /* Run command in child */'
i=i+1;f(i)='          if ((exec(argv[1], &argv[2]) < 0 )) {'
i=i+1;f(i)='              fprintf(stderr, '+ascii(34)+'execl error\n'+ascii(34)+');'
i=i+1;f(i)='              exit(200);'
i=i+1;f(i)='              }'
i=i+1;f(i)='          default:              /* In the parent */'
i=i+1;f(i)='             wait(&returnval);  /* After the command has completed .. */'
i=i+1;f(i)='             fprintf(stderr,'+ascii(34)+'Exit status: %d\n'+ascii(34)+',WEXITSTATUS(returnval));'
i=i+1;f(i)='             exit(0);'
i=i+1;f(i)='             }'
i=i+1;f(i)='}'
n=i

    

printf("\n\n$ cat exec_and_fork.c      # to open the file emp.lst")
halt(' ')
u=mopen('exec_and_fork.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc exec_and_fork.c")
 halt(' ')
 printf("$ a.out   /bin/grep   grep   -i -n  SUMIT   /etc/passwd                   ")
 halt(' ')
 printf("15:sumit:x:102:10::/users1/home/staff/sumit:/usr/bin/bash\nExit status: 0")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


