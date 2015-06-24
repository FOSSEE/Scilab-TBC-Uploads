clear
flag=1
mode(-1)
clc

printf("Example 10    :               Show the method of listing only directories in systems programming \n")
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
i=0;
i=i+1;f(i)='/* Program lsdir.c -- Lists only directories using S_IFMT and S_ISDR macros */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <sys/types.h>'
i=i+1;f(i)='#include <sys/stat.h>'
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <dirent.h>'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc,int **argv){'
i=i+1;f(i)='    DIR *dir;'
i=i+1;f(i)='    struct dirent *direntry;      /* Returned by readdir() */'
i=i+1;f(i)='    struct stat statbuf;          /* Address of statbuf used by lstat() */'
i=i+1;f(i)='    mode_t file_type, file_perm;'
i=i+1;f(i)='    '
i=i+1;f(i)='    if ((dir = opendir(argv[1])) == NULL)'
i=i+1;f(i)='       quit('+ascii(34)+'Couldn'+ascii(39)+'t open directory'+ascii(34)+',1);'
i=i+1;f(i)='    if((chdir(argv[1]) == -1)) /* Change to directory before */'
i=i+1;f(i)='       quit('+ascii(34)+'chdir'+ascii(34)+',2);        /* you starting reading its entries*/'
i=i+1;f(i)='       '
i=i+1;f(i)='    while ((direntry = readdir(dir)) != NULL) { /* Read each entry in directory*/'
i=i+1;f(i)='      if (lstat(direntry->d_name,&statbuf) < 0){ /* dname must be in */'
i=i+1;f(i)='          perror('+ascii(34)+'lstat'+ascii(34)+');                       /*current directory */'
i=i+1;f(i)='          continue;'
i=i+1;f(i)='          }'
i=i+1;f(i)='          if (S_ISDIR(statbuf.st_mode)) {        /*If file is a directory */'
i=i+1;f(i)='              file_type = statbuf.st_mode & S_IFMT;'
i=i+1;f(i)='              file_perm = statbuf.st_mode & -S_IFMT;'
i=i+1;f(i)='              printf('+ascii(34)+'%o %4o %s\n'+ascii(34)+', file_type, file_perm, direntry->d_name);'
i=i+1;f(i)='              }'
i=i+1;f(i)='              }'
i=i+1;f(i)='              exit(0);'
i=i+1;f(i)='}'
n=i

printf("\n\n$ cat lsdir.c      # to open the file emp.lst")
halt(' ')
u=mopen('lsdir.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc lsdir.c")
 halt(' ')
 printf("\n# Enter the name of the directory as command-line argument which you want to access     \n")
 nam=input("$ a.out      ",'s')
 halt(' ')
 pwd
 back=ans
 cd(nam)
x=dir()
mprintf("40000   755   %s\n",x.name)
cd(back) 
 printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


