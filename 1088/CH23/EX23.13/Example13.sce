clear
flag=1
mode(-1)
clc

printf("Example 13    :               Show the method of setting a file timestamps \n")
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
i=i+1;f(i)='/* Program: atimemtime.c -- Sets a file time stamps to those of another file */'
i=i+1;f(i)='#include <sys/stat.h>'
i=i+1;f(i)='#include <fcntl.h>'
i=i+1;f(i)='#include <utime.h>'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *,int);'
i=i+1;f(i)='int main(int argc,char **argv) {'
i=i+1;f(i)='    struct stat statbuf;     /* To obtain time stamps for an existing file */'
i=i+1;f(i)='    struct utimbuf timebuf;  /* To set time stamps for another file */'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (lstat(argv[1], &statbuf) == -1)'
i=i+1;f(i)='        quit('+ascii(34)+'stat'+ascii(34)+', 1);'
i=i+1;f(i)='        '
i=i+1;f(i)='    timebuf.actime = statbuf.st_atime; /* Setting members of timebuf with */'
i=i+1;f(i)='    timebuf.modtime= statbuf.st_mtime; /* values obtained from statbuf */'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (open(argv[2], O_RWR | O_CREAT, 0644) == -1)'
i=i+1;f(i)='      quit('+ascii(34)+'open'+ascii(34)+', 2);'
i=i+1;f(i)='    close(argv[2]);         /* Previously used open only to create it */'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (utime(argv[2]), &timebuf) == -1) /* Sets both time stamps for file */'
i=i+1;f(i)='      quit('+ascii(34)+'utime'+ascii(34)+', 3);'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
n=i

printf("\n\n$ cat atimemtime.c      # to open the file emp.lst")
halt(' ')
u=mopen('atimemtime.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc atimemtime.c")
 halt(' ')
 printf("$ mv a.out $HOME;cd;a.out .profile .logintime")
 halt(' ')
 printf("$ ls -l .logintime ; ls -lu .logintime")
 halt(' ')
 printf("-rw-r--r--  1  <user>  <group>  0 Jun 20 00:55 .logintime\n")
 printf("-rw-r--r--  1  <user>  <group>  0 Jun   5 00:30 .logintime\n")
halt(' ')

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


