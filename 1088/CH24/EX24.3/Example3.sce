clear
flag=1
mode(-1)
clc

printf("Example 3    :    Show the effect of changing the childs environment and check its effect in parent \n")
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
i=i+1;f(i)='/* Program: childenv.c -- Changes child'+ascii(39)+'s environment and then checks the effect in parent*/'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <sys/types.h>'
i=i+1;f(i)='#define PATH_LENGTH 30'
i=i+1;f(i)=''
i=i+1;f(i)='int main(void) {'
i=i+1;f(i)='    pid_t pid;'
i=i+1;f(i)='    int x = 100;'
i=i+1;f(i)='    char newdir[PATH_LENGTH + 1]; /* Additional space required for \0*/'
i=i+1;f(i)='    '
i=i+1;f(i)='    getcwd(newdir, PATH_LENGTH);  /* Get current directory before fork */'
i=i+1;f(i)='    printf('+ascii(34)+'BEFORE FORK -- Current directory: %s\n'+ascii(34)+', newdir);'
i=i+1;f(i)='    '
i=i+1;f(i)='    pid = fork ();'
i=i+1;f(i)='    switch (pid) {'
i=i+1;f(i)='        case -1:'
i=i+1;f(i)='        perror('+ascii(34)+'fork'+ascii(34)+');'
i=i+1;f(i)='        exit(1);                /*for error*/'
i=i+1;f(i)='        case 0:  /*Child*/'
i=i+1;f(i)='        printf('+ascii(34)+'CHILD -- Inherited value of x: %d\n'+ascii(34)+', x);'
i=i+1;f(i)='        x=200;'
i=i+1;f(i)='        printf('+ascii(34)+'CHILD -- Changed value of x: %d\n'+ascii(34)+', x);'
i=i+1;f(i)='        printf('+ascii(34)+'CHILD -- Inherited value of PATH: %s\n'+ascii(34)+', getenv('+ascii(34)+'PATH'+ascii(34)+'));'
i=i+1;f(i)='        setenv('+ascii(34)+'PATH'+ascii(34)+','+ascii(34)+'.'+ascii(34)+', 1);   /* Change PATH here; use putenv('+ascii(34)+'PATH=.'+ascii(34)+') */'
i=i+1;f(i)='                                 /* if setenv() not supported */'
i=i+1;f(i)='        printf('+ascii(34)+'CHILD -- New value of PATH: %s\n'+ascii(34)+', getenv('+ascii(34)+'PATH'+ascii(34)+'));'
i=i+1;f(i)='        if (chdir('+ascii(34)+'/etc'+ascii(34)+') != -) {       /* '+ascii(34)+'cd'+ascii(34)+' to /etc */'
i=i+1;f(i)='        getcwd(newdir, PATH_LENGTH);    /* Do a '+ascii(34)+'pwd'+ascii(34)+' */'
i=i+1;f(i)='        printf('+ascii(34)+'CHILD -- Current directory changed to: %s\n'+ascii(34)+',newdir);'
i=i+1;f(i)='        }'
i=i+1;f(i)='        break;'
i=i+1;f(i)='        exit(0);'
i=i+1;f(i)='        default:/* Parent */'
i=i+1;f(i)='        sleep(2);                      /* Allow child to complete */'
i=i+1;f(i)='        getcwd(newdir, PATH_LENGTH);    /*Getting new directory */'
i=i+1;f(i)='        printf('+ascii(34)+'PARENT -- Value of x after change by child: %d\n'+ascii(34)+',x);'
i=i+1;f(i)='        printf('+ascii(34)+'PARENT -- Current directory is still: %s\n'+ascii(34)+', newdir);'
i=i+1;f(i)='        printf('+ascii(34)+'PARENT -- Value of PATH is unchanged: %s\n'+ascii(34)+',getenv('+ascii(34)+'PATH'+ascii(34)+'));'
i=i+1;f(i)='        exit(0);'
i=i+1;f(i)='}'
i=i+1;f(i)='}'
n=i        
    

printf("\n\n$ cat childenv.c      # to open the file emp.lst")
halt(' ')
u=mopen('childenv.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc childenv.c")
 halt(' ')
 printf("$ a.out")
 halt(' ')
 printf("BEFORE FORK -- Current directory: /users1/home/staff/sumit")
 printf("\nCHILD -- Inherited value of x: 100")
 printf("\nCHILD -- Changed value of x:200")
 printf("\nCHILD -- Inherited value of PATH: /usr/bin::/usr/local/bin:/usr/ccs/bin")
 printf("\nCHILD -- New value of PATH: .")
 printf("\nCHILD -- Current directory changed to: /etc")
 printf("\nPARENT -- Value of x after change to child: 100")
 printf("\nPARENT -- Current directory is still: /users1/home/staff/sumit")
 printf("\nPARENT -- Value of PATH is unchanged: /usr/bin::/usr/local/bin::/usr/ccs/bin")
 halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


