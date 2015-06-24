clear
flag=1
mode(-1)
clc

printf("Example 15    :       Show the effect of [Ctrl-c] in the shell so as to do some operations \n")
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
i=i+1;f(i)='/* Program: signal2.c -- Handles SIGINT and SIGTSTP generated from terminal Required two [Ctrl-c]s to terminate */'+ascii(39)+''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)='#include <signal.h>'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *message, int exit_status) ;'
i=i+1;f(i)='void tstp_handler(int signo);    /* Handler for [Ctrl-z] */'
i=i+1;f(i)='void int_handler(int signo);     /* Handler for [Ctrl-c] */'
i=i+1;f(i)='int n, count=0;'
i=i+1;f(i)=''
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    signal(SIGTSTP, tstp_handler); /* Disposition for these two signals */'
i=i+1;f(i)='    signal(SIGINT, int_handler);   /* set to enter respective handler */'
i=i+1;f(i)='    signal(SIGQUIT, SIG_IGN);      /* Disposition set to ignore */'
i=i+1;f(i)='    '
i=i+1;f(i)='    fprintf(stderr,'+ascii(34)+'Press [Ctrl-z] first, then [Ctrl-c]\n'+ascii(34)+');'
i=i+1;f(i)='    for(;;)'
i=i+1;f(i)='     pause();                  /* Will return on reciept of help */'
i=i+1;f(i)='}'
i=i+1;f(i)=''
i=i+1;f(i)='void tstp_handler(int signo) {'
i=i+1;f(i)='     signal(SIGTSTP, tstp_handler);        /* Not entirely reliable */'
i=i+1;f(i)='     fprintf(stderr, '+ascii(34)+'Can'+ascii(39)+'t stop this program\n'+ascii(34)+');  /* same signal can reset */'
i=i+1;f(i)='}                                          /* disposition to default */'
i=i+1;f(i)=''
i=i+1;f(i)='void int_handler(int signo) {             /* Will terminate program */'
i=i+1;f(i)='       signal(SIGINT, int_handler);        /* on second invocation */'
i=i+1;f(i)='       (++count == 1) ? printf('+ascii(34)+'Press again\n'+ascii(34)+') : quit('+ascii(34)+'Quitting'+ascii(34)+', 1);'
n=i

    

printf("\n\n$ cat signal2.c      # to open the file emp.lst")
halt(' ')
u=mopen('signal2.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc signal2.c")
 halt(' ')
 printf("$ a.out ")
 halt(' ')
printf("Press [Ctrl-z] first, then [Ctrl-c]")
halt("")
printf("# [Ctrl - \\] pressed                 ")
sleep(2500)
printf("                      Signal Ignored  \n")
printf("# [Ctrl - z] pressed                 \n")
sleep(2500)
printf("Cannot stop this program                 From tstp_handler\n")
printf("# [Ctrl - c] pressed                 ")
sleep(2500)
printf("\nPress again                     From int_handler\n")
printf("# [Ctrl - c] pressed                 \n")
sleep(2500)
printf("Quitting: Interrupted system call           From int_handler")
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


