clear
flag=1
mode(-1)
clc
//Program for example 1 chapter 1
printf("Current date is %s \n \nWelcome to the Textbook Companionship Project 2013 \n",date())
printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n")
disp("Book Title                             :       UNIX CONCEPTS AND APPLICATIONS ")
disp("Book Edition                         :                                                                           4")
disp("Book Author                          :                                                    Sumitabha Das")
printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n")
disp("Code Author                          :                                                     Pranav Bhat T")
printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n")
disp("Chapter Number                    :                                                                            24")
disp("Chapter Title                         :                              Systems programming II- Files")
printf("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n")
printf("Example 16    :       Show the method of using fork and exec to run a user-defined\n program and kill it in 5 seconds if not completed \n")
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
i=i+1;f(i)='/* Program: killprocess.c -- Uses fork and exec to run a user-defined program and kills it if it doesnt complete in 5 seconds */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <sys types.h="">'
i=i+1;f(i)='#include <sys wait.h="">'
i=i+1;f(i)='#include <signal.h>'
i=i+1;f(i)=''
i=i+1;f(i)='pid_t pid;'
i=i+1;f(i)='int main(int argc, char **argv) {'
i=i+1;f(i)='    int i,status;'
i=i+1;f(i)='    void death_handler(int signo);   /* A common signal handler this time */'
i=i+1;f(i)='    '
i=i+1;f(i)='    signal(SIGCHLD, death_handler);  /* death_handler is invoked when a */'
i=i+1;f(i)='    signal(SIGALRM, death_handler);  /* child dies or an alarm is recieved */'
i=i+1;f(i)='    '
i=i+1;f(i)='    switch (pid = fork()) {'
i=i+1;f(i)='           case -1: printf('+ascii(34)+'Fork error\n'+ascii(34)+');'
i=i+1;f(i)='           case 0: execvp(argv[1],&amp;argv[1]);   /* Execute command */'
i=i+1;f(i)='                   perror('+ascii(34)+'exec'+ascii(34)+');'
i=i+1;f(i)='                   break;'
i=i+1;f(i)='           default: alarm(5);      /* Will send SIGALRM after 5 seconds */'
i=i+1;f(i)='                   pause();        /* Will return when SIGCHILD signal is received */'
i=i+1;f(i)='                   printf('+ascii(34)+'Parent dies\n'+ascii(34)+');'
i=i+1;f(i)='                   }'
i=i+1;f(i)='           exit(0);'
i=i+1;f(i)='           }'
i=i+1;f(i)='    '
i=i+1;f(i)='    void death_handler(int signo) {      /* This common handler pics up the */'
i=i+1;f(i)='          int status;                    /* exit status for normal termination */'
i=i+1;f(i)='          signal(signo, death_handler);   /* but sends the SIGTERM signal if */'
i=i+1;f(i)='          switch(signo) {                   /* command doesnt complete in 5 seconds */'
i=i+1;f(i)='              case SIGCHLD: waitpid(-1, &amp;status, 0); /* Same as wait(&amp;status); */'
i=i+1;f(i)='              printf('+ascii(34)+'Child dies; exit status: %d\n'+ascii(34)+',WEXITSTATUS(status));'
i=i+1;f(i)='              break;'
i=i+1;f(i)='          case SIGALRM: if (kill(pid, SIGTERM) == 0)'
i=i+1;f(i)='                        fprintf(stderr, '+ascii(34)+'5 seconds over,child killed\n'+ascii(34)+');'
i=i+1;f(i)='                        }'
i=i+1;f(i)='}'
n=i
    

printf("\n\n$ cat killprocess.c      # to open the file emp.lst")
halt(' ')
u=mopen('killprocess.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc killprocess.c")
 halt(' ')
 printf("$ a.out  date")
 halt(' ')
 printf("Sat Jun 20  22:29:27  IST 2013\nChild dies: exit status: 0\nParent dies")
halt(' ')
printf("\n")
printf("$ a.out find /home -name a.out -print") 
halt(' ')
printf("/home /sumit/personal/project8/a.out\n/home/sumit/personal/books_code/glass_ables/12/a.out\n/home/sumit/personal/books_code/stevens_c/ch08/a.out")
printf("  ..after 5 second time interval ...")
sleep(5000)
printf("\n5 seconds over, child killed\nParent dies\n")
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


</signal.h></sys></sys></stdio.h>