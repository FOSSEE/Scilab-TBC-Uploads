clear
flag=1
mode(-1)
clc

printf("Example 6    :               Show the method of reversing a file using error handling alternatives \n")
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
i=i+1;f(i)='/* Program: reverse_read2.c -- Reads a file in reverse - uses error handling */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <fcntl.h>             /* For 0_RDONLY   */'
i=i+1;f(i)='#include <unistd.h>            /* For STDOUT_FILENO */'
i=i+1;f(i)='#include <errno.h>             /* For ENOENT, errno, etc. */'
i=i+1;f(i)='#include <stdio.h>             /* For ENOENT, errno, etc. */'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, chr **argv) {'
i=i+1;f(i)='    int size, fd;'
i=i+1;f(i)='    char buf;                  /* Single-character buffer */'
i=i+1;f(i)='    char *mesg = '+ascii(34)+'Not enough arguments\n'+ascii(34)+' ;'
 i=i+1;f(i)='   '
i=i+1;f(i)='    if (argc != 2) {           /* Our own user-defined error message */'
i=i+1;f(i)='        write(STDERR_FILENO, mesg, strlen(mesg)); /* Crude form of error*/'
i=i+1;f(i)='        exit(1);                                  /*handling using write*/'
i=i+1;f(i)='    }                                             /* Use fprintf instead*/'
i=i+1;f(i)='    '
i=i+1;f(i)='    if ((fd = open(argv[1],O_RDONLY)) == -1) {'
i=i+1;f(i)='        if (errno == ENOENT) {             /* Checking for specific error*/'
i=i+1;f(i)='            fprintf(stderr, '+ascii(34)+'%s\n'+ascii(34)+',stderror(errno)); /*perror is better*/'
i=i+1;f(i)='            exit(2);'
i=i+1;f(i)='        } else {'
i=i+1;f(i)='           perror(argv[1]);                /* Using two library functions */'
i=i+1;f(i)='           exit(3);                         /* perror and exit.often the  */'
i=i+1;f(i)='        }                                    /* preferred way */'
i=i+1;f(i)='    }                 '
i=i+1;f(i)='    '
i=i+1;f(i)='    lseek(fd, 1, SEEK_END);              /* Pointer taken to EOF + 1 first */'
i=i+1;f(i)='    while (lseek(fd, -2, SEEK_CUR) >=0) { /* and then back by two bytes */    '
i=i+1;f(i)='        if (read(fd, &buf, 1) != 1) {     /* A signal can create error here */'
i=i+1;f(i)='           perror('+ascii(34)+'read'+ascii(34)+');'
i=i+1;f(i)='           exit(4);'
i=i+1;f(i)='        }'
i=i+1;f(i)='        if (write(STDOUT_FILENO, &buf, 1) != 1) { /* Disk may run out of space */'
i=i+1;f(i)='           perror('+ascii(34)+'write'+ascii(34)+');'
i=i+1;f(i)='           exit(5);'
i=i+1;f(i)='        }'
i=i+1;f(i)='   }'
i=i+1;f(i)='   close(fd);               /*Can have error here too*/'
i=i+1;f(i)='    exit(0);                 /* exit doesn'+ascii(39)+'t return - hence no error */'
i=i+1;f(i)='}'
n=i

printf("\n\n$ cat reverse_read2.c      # to open the file emp.lst")
halt(' ')
u=mopen('reverse_read2.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc
printf("\n$ ls   \n")
halt(' ')
mode(0)
ls
mode(-1)
nam=input("# Please enter a file from the above list  : ",'s')
printf("\n$ cat %s    ",nam)
halt(' ')
v=mopen(nam,"rt")
while ~meof(v)
    [n,a]=mfscanf(v,"%c");
    if  meof(v) break
        end
    printf("%c",a)
end
mclose(v)
halt("")
printf("\n$ cc reverse_read2.c")
halt("")
printf("$ a.out  %s   \n......a blank line...           The terminating \\n of the last line",nam)
halt("")
v=mopen(nam,"rt")
mseek(-1,v,'end')
siz=mtell(v)
siz=siz-1
while siz~=-1
    [n,a]=mfscanf(v,"%c");
    printf("%c",a)
    mseek(siz,v)
    siz=siz-1
end
mseek(0,v)
  [n,a]=mfscanf(v,"%c");
    printf("%c",a)

mclose(v)
halt(' ')


printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


