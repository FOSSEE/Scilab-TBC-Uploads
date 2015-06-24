clear
flag=1
mode(-1)
clc

printf("Example 8    :               Show the method of using readdir to populate a dirent structure \n")
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
i=i+1;f(i)='/* Program: lls.c -- Uses readdir to populate a dirent structure */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <dirent.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc, int **argv) {'
i=i+1;f(i)='    DIR *dir;                   /* Returned by opendir*/'
i=i+1;f(i)='    struct dirent *direntry;    /* Returned by readdir*/'
i=i+1;f(i)='    '
i=i+1;f(i)='    if ((dir = opendir(argv[1])) == NULL) /* Directory must exist and*/'
i=i+1;f(i)='        quit('+ascii(34)+'opendir'+ascii(34)+', 1);               /* have read permission*/'
i=i+1;f(i)='        '
i=i+1;f(i)='    while ((direntry = readdir(dir)) != NULL)   /* Till there are new entries*/'
i=i+1;f(i)='           printf('+ascii(34)+'%10d %s\n'+ascii(34)+',direntry->d_ino,direntry->d_name);'
i=i+1;f(i)='    closedir(dir);'
i=i+1;f(i)='    exit(0);'
i=i+1;f(i)='}       '
        n=i
printf("\n\n$ cat lls.c      # to open the file emp.lst")
halt(' ')
u=mopen('lls.c','wt')
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
 disp("#  Please enter the name of the directory which you want to go as the command line argument")
 disp("")
nam=input("$ a.out   ",'s')
 halt(' ')
 pwd
 back=ans
 cd(nam)
x=dir()
dt=getdate(x.date);
mprintf("%-20s   :   %05d-%03d-%03d            %02d:%02d:%02d\n",x.name,dt(:,[1 2 6 7:9]))
 halt("")
 cd(back)
halt(' ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


