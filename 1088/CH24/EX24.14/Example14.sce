clear
flag=1
mode(-1)
clc

printf("Example 14    :  Show the use of generating signals and how the system can be made to catch it  \n")
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
i=i+1;f(i)='/* Program: signal.c -- Waits for 5 seconds for user input and then generates SIGALRM that has a handler specified */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)='#include <signal.h>'
i=i+1;f(i)='#define BUFSIZE 100'
i=i+1;f(i)=''
i=i+1;f(i)='void alrm_handler(int signo);    /* Prototypes declarations for */'
i=i+1;f(i)='void quit(char *message,int exit_status);  /*signal handler and quit */'
i=i+1;f(i)=''
i=i+1;f(i)='char buf[BUFSIZE] = '+ascii(34)+'foo\0'+ascii(34)+';         /* Global variable */'
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    int n;'
i=i+1;f(i)='    if (signal(SIGALRM, alrm_handler) == SIG_ERR)   /* signal returns SIG_ERR */'
i=i+1;f(i)='    quit('+ascii(34)+'sigalrm'+ascii(34)+',1);                              /*on error*/'
i=i+1;f(i)='    '
i=i+1;f(i)='    fprintf(stderr, '+ascii(34)+'Enter filename: '+ascii(34)+');'
i=i+1;f(i)='    alarm(5);                       /* Sets alarm clock;will deliver */'
i=i+1;f(i)='    n = read(STDIN_FILENO, buf, BUFSIZE); /* SIGALRM in 5 seconds */'
i=i+1;f(i)='    if (n>1)                               /* Will come here if user inputs */'
i=i+1;f(i)='         printf('+ascii(34)+'Filename: %s\n'+ascii(34)+',buf);     /* string within 5 seconds */'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
i=i+1;f(i)=''
i=i+1;f(i)='void alrm_handler(int signo) {      /* Invoked with process recieves SIGALRM */'
i=i+1;f(i)='        signal(SIGALRM, alrm_handler);  /* Resetting signal handler */'
i=i+1;f(i)='        fprintf(stderr, '+ascii(34)+'\nSignal %d reeived, default filename: %s\n'+ascii(34)+', signo, buf);'
i=i+1;f(i)='        exit(1);'
i=i+1;f(i)='}'
n=i
    

printf("\n\n$ cat signal.c      # to open the file emp.lst")
halt(' ')
u=mopen('signal.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc signal.c")
 halt(' ')
 printf("$ a.out ")
 halt(' ')
printf("Enter filename:  ")
sleep(1000);printf("s");sleep(300);printf("i");sleep(300);printf("g") ;sleep(300);printf("n") ;sleep(300);printf("a") ;sleep(300);printf("l") ;sleep(300);printf(".") ;sleep(300);printf("l") ;sleep(300);printf("o") ;sleep(300);printf("g") ;sleep(500) ;printf(" [-ENTER-]")
printf("\nFilename: signal.log")
halt('')
printf("$ a.out")
halt(' ')
printf("Enter filename:                             # Do not enter anything")
sleep(5000)
printf("# Nothing entered in 5 seconds \n")
printf("Signal 14 received, default filename: foo")
halt(' ')
printf("$ kill -l | grep 14                      # What is signal 14")
halt(' ')
printf("13) SIGPIPE      14) SIGALRM       15) SIGTERM        16) SIGUSRI\n")
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


