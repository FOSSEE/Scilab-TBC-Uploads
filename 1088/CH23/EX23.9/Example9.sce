clear
flag=1
mode(-1)
clc

printf("Example 9    :               Show the method of using lstatcall and struct stat to display file attributes\n")
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
i=i+1;f(i)='/* Program: attributes.c -- Uses lstat call and struct stat to display file attributes */'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <sys/stath>'
i=i+1;f(i)=''
i=i+1;f(i)='void quit(char *,int);'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, char**argv) {'
i=i+1;f(i)='    struct stat statbuf;     /*We'+ascii(39)+'ll use lstat to populate this*/'
i=i+1;f(i)='    '
i=i+1;f(i)='    if (lstat(argv[1], &statbuf) == -1)'
i=i+1;f(i)='       quit('+ascii(34)+'Couldn'+ascii(39)+'t stat file'+ascii(34)+', 1);'
i=i+1;f(i)='       '
i=i+1;f(i)='    printf('+ascii(34)+'File: %s\n'+ascii(34)+',argv[1]);'
i=i+1;f(i)='    printf('+ascii(34)+'Inode number: %d \n'+ascii(34)+',statbuf.st_ino);'
i=i+1;f(i)='    printf('+ascii(34)+'UID: %d '+ascii(34)+',statbuf.st_uid);'
i=i+1;f(i)='    printf('+ascii(34)+'GID: %d \n'+ascii(34)+',statbuf.st_gid);'
i=i+1;f(i)='    printf('+ascii(34)+'Types and Permissions: %o\n'+ascii(34)+',statbuf.st_mode);'
i=i+1;f(i)='    printf('+ascii(34)+'Number of links: %d \n'+ascii(34)+',statbuf.st_nlink);'
i=i+1;f(i)='    printf('+ascii(34)+'Size in bytes: %d\n'+ascii(34)+',statbuf.st_size);'
i=i+1;f(i)='    printf('+ascii(34)+'Blocks allocated: %d\n'+ascii(34)+',statbuf.st_blocks);'
i=i+1;f(i)='    printf('+ascii(34)+'Last Modification Time: %s\n'+ascii(34)+',ctime(&statbuf.st_mtime));'
i=i+1;f(i)='    printf('+ascii(34)+'Last Access Time: %s\n'+ascii(34)+',ctime(&statbuf.st_atime));'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}'
n=i  
printf("\n\n$ cat attributes.c      # to open the file emp.lst")
halt(' ')
u=mopen('attributes.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc dir.c")
 halt(' ')
 disp("")
printf("\nHere it displays a mock value since it is windows\n\n")
if getos()=='Windows' then
    printf("\n$ a.out /etc/passwd\nFile: /etc/passwd\nInode number: 54412\nUID: 0 GID: 3\nType and Permissions: 100755\nNumber of links: 1")
printf("\nSize in bytes: 10803\nBlocks allocated: 22\nLast Modification Time: Tue Nov 19 16:29:13 2002\nLast Access Time: Tue NOv 26 19:57:01 2002\n")
else
    printf("$ a.out /etc/passwd")
    unix_w('cc attributes.c;a.out /etc/passwd')
end
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


