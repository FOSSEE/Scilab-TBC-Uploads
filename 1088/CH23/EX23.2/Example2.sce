clear
flag=1
mode(-1)
clc

printf("Example 2    :               Show the method of reversing a file using lseek \n")
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
i=i+1;f(i)='/* Program: reverse_read.c -- Reads a file in reverse - uses lseek */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <fcntl.h>               /* For O_RONLY */'
i=i+1;f(i)='#include <unistd.h>              /* For STDOUT_FILENO */'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, char **argv) {'
i=i+1;f(i)='    char buf;                    /* Single-character buffer; will make */'
i=i+1;f(i)='    int size, fd;                /* I/O inefficient. See Section 23.4 */'
i=i+1;f(i)='    '
i=i+1;f(i)='    fd= open(argv[1], O_RDONLY);'
i=i+1;f(i)='    size = lseek(fd, -1, SEEK_END);  /* Pointer taken to EOF - 1 ... */'
i=i+1;f(i)='    while (size-- >= 0) {            /* ... so siz = file size - 1 */'
i=i+1;f(i)='         read(fd, &buf, 1);          /* Read one character at a time */'
i=i+1;f(i)='         write(STD_FILENO, &buf, 1); /* and write it immediately */'
i=i+1;f(i)='         lseek(fd, -2, SEEK_CUR);    /* Now move the file pointer back */'
i=i+1;f(i)='         }                           /* by two characters */'
i=i+1;f(i)='        /* exit(0); */              /* done deliberately */'
i=i+1;f(i)='}'
n=i
printf("\n\n$ cat reverse_read.c      # to open the file emp.lst")
halt(' ')
u=mopen('reverse_read.c','wt')
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
printf("\n$ cc reverse_read.c")
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


