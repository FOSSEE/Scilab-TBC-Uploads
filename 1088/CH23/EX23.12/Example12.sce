clear
flag=1
mode(-1)
clc

printf("Example 12    :               Show the file access rights of a file using the read UID and GID \n")
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
i=i+1;f(i)='/*Program: faccess.c -- Determines a file'+ascii(39)+'s access rigths using read UID and GID */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <unistd.h>'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *,int);'
i=i+1;f(i)='int main(int argc, char *argv[]) {'
i=i+1;f(i)='    short count;'
i=i+1;f(i)='    for (count = 1; count < argc ;++count) {'
i=i+1;f(i)='        printf('+ascii(34)+'%s  '+ascii(34)+',argv[count]);'
i=i+1;f(i)='        '
i=i+1;f(i)='        if (access(argv[count],F_OK) == -1)'
i=i+1;f(i)='        quit('+ascii(34)+'File not found'+ascii(34)+',1);'
i=i+1;f(i)='        if (access(argv[count],R_OK) == -1)'
i=i+1;f(i)='        printf('+ascii(34)+'Not readable '+ascii(34)+');'
i=i+1;f(i)='        if (access(argv[count],W_OK) == -1)'
i=i+1;f(i)='        printf('+ascii(34)+'Not writable '+ascii(34)+');'
i=i+1;f(i)='        if (access(argv[count],X_OK) == -1)'
i=i+1;f(i)='        printf('+ascii(34)+'Not executable '+ascii(34)+');'
i=i+1;f(i)='        '
i=i+1;f(i)='        printf('+ascii(34)+'\n'+ascii(34)+');'
i=i+1;f(i)='        }'
i=i+1;f(i)='        exit(0);'
i=i+1;f(i)='}'
n=i

printf("\n\n$ cat faccess.c      # to open the file emp.lst")
halt(' ')
u=mopen('faccess.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc faccess.c")
 halt(' ')
 printf("$ a.out    /etc/passwd   /etc/shadow")
 halt(' ')
printf("/etc/passwd: Not writable   Not executable\n/etc/shadow: Not readable   Not writable   Not executable\n\n");
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


