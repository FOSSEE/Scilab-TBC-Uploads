clear
flag=1
mode(-1)
clc

printf("Example 9    :    Show the effect of creating a mock child shell which accepts and executes commands \n")
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
i=i+1;f(i)='/* Program: shell.c -- Accepts user input as a command to be executed. Users the strtok library function for parsing command line*/'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)='#include <string.h>        /*for strtok*/'
i=i+1;f(i)='#include <wait.h>'
i=i+1;f(i)=''
i=i+1;f(i)='#define BUFSIZE 200         /*Maximum size for the command line */'
i=i+1;f(i)='#define ARGVSIZE 40         /* Maximum number of arguments*/'
i=i+1;f(i)='#define DELIM '+ascii(34)+'\n\t\r'+ascii(34)+'       /* White-space delimiters for strtok */'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, char **argv) {'
i=i+1;f(i)='    int i,n ;'
i=i+1;f(i)='    char buf[BUFSIZE + 1];      /* Stores the entered command line */'
i=i+1;f(i)='    char *clargs[ARGVSIZE];     /* Stores the arguments strings */'
i=i+1;f(i)='    int returnval ;             /* Used by wait */'
i=i+1;f(i)='    for (;;) {                  /* Loop forever */'
i=i+1;f(i)='         n = 1;'
i=i+1;f(i)='         write(STDOUT_FILENO, '+ascii(34)+'Shell> '+ascii(34)+',7);  /*Display a prompt */'
i=i+1;f(i)='         read(STDIN_FILENO, buf, BUFSIZE);    /* Read user input into buf */'
i=i+1;f(i)='         if (!strcmp(buf, '+ascii(34)+'exit\n'+ascii(34)+'))'
i=i+1;f(i)='         exit(0);                 /* Terminate if user enters exit */'
i=i+1;f(i)='                                  /* Now parse buf to extract the */'
i=i+1;f(i)='         clargs[0] = strtok(buf, DELIM); /* first word */'
i=i+1;f(i)='                                   /* Continue parsing until ... */'
i=i+1;f(i)='         while ((clargs[n] = strtok(NULL, DELIM) != NULL)'
i=i+1;f(i)='         n++;                      /* ...all words are extracted */'
i=i+1;f(i)='         '
i=i+1;f(i)='         clargs[n] = NULL;         /* Set last arguments pointer to NULL */'
i=i+1;f(i)='         switch(fork()) {'
i=i+1;f(i)='                        case 0:'
i=i+1;f(i)='                             if ((execvp(clargs[0], &clargs[0])) < 0)'
i=i+1;f(i)='                             exit(200);    /* We will check this value later */'
i=i+1;f(i)='                     default:       /* Int the parent */'
i=i+1;f(i)='                     wait(&returnval); /*After the command has completed.. */' 
i=i+1;f(i)='                     printf('+ascii(34)+'Exit status of command: %d\n'+ascii(34)+',WEXITSTATUS(returnval));'
i=i+1;f(i)='                     for (i=0; i<=n ;i++)  /*...initialise both... */'
i=i+1;f(i)='                     clargs[i] = '+ascii(34)+'\0'+ascii(34)+';     /*the argument array ...*/'
i=i+1;f(i)='                     for (i=0; i<BUFSIZE+1; i++)'
i=i+1;f(i)='                     buf[i] = '+ascii(39)+'\0'+ascii(39)+';     /* ... and the buffer that stores command */'
i=i+1;f(i)='                     }                  /* line, so next command can work with */'
i=i+1;f(i)='           }                            /* an initialized buffer and argument */'
i=i+1;f(i)='}                                        /* array */'
i=i+1;f(i)=''
n=i           

    

printf("\n\n$ cat shell.c      # to open the file emp.lst")
halt(' ')
u=mopen('shell.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc shell.c")
 halt(' ')
 printf("$ a.out ")
 halt(' ')
 printf("Shell> ")
 sleep(1500)
 printf("grep  joker  /etc/passwd")
 halt(' ')
 printf("Exit status of command: 1                      #grep returns 1 if pattern not found")
 halt(' ')
 printf("Shell> ")
 sleep(1500)
 printf("pwd                             #Is this the shell builtin? ")
halt(' ')
printf("/users1/home/staff/sumit\nExit status of command: 0")
 halt(' ')
 printf("Shell> ")
sleep(1500)
printf("ls -lu  /usr/bin/pwd               # Now check the access time of on-disk pwd")
halt(' ')
printf("-r-xr-xr-x      1  root        bin     4360   May  29  01:33    /use/bin/pwd\nExit status of command: 0        # Disk file has just been accessed! ")
 halt(' ')
 printf("Shell> ")
sleep(1500)
printf("exit")
halt('')
printf("$_              # Back to parent shell") 
halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


