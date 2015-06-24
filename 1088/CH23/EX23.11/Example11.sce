clear
flag=1
mode(-1)
clc

printf("Example 11    :               Show the method of listing all the permissions in a file \n")
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
i=i+1;f(i)='/* Program: check_all_perm.c -- Checks all 12 permission bits of a file */'
i=i+1;f(i)=''
i=i+1;f(i)='#include <stdio.h>'
i=i+1;f(i)='#include <sys/stat.h>'
i=i+1;f(i)='#include <fcntl.h>'
i=i+1;f(i)=''
i=i+1;f(i)='void print_permissions(char *,struct stat *) ;'
i=i+1;f(i)='void check_permission(int, int, char *);'
i=i+1;f(i)=''
i=i+1;f(i)='int main(int argc,char *argv[]) {'
i=i+1;f(i)='    int i,fd,perm;'
i=i+1;f(i)='    char *filename =  argv[1];'
i=i+1;f(i)='    struct stat statbuf;'
i=i+1;f(i)='    mode_t perm_flag[] = {S_IRUSR,S_IWUSR,S_IXUSR,S_IRGRP,S_IWGRP,S_IXGRP,S_IROTH,S_IWOTH,S_IXOTH,S_ISUID,S_ISGID,S_ISVTX );'
i=i+1;f(i)=''    
i=i+1;f(i)='    char *mesg[] = {'+ascii(34)+'User-readable'+ascii(34)+','+ascii(34)+'User-writable'+ascii(34)+','+ascii(34)+'User-executable'+ascii(34)+','+ascii(34)+'Group-readable'+ascii(34)+','+ascii(34)+'Group-writable'+ascii(34)+','+ascii(34)+'Group-executable'+ascii(34)+','+ascii(34)+'Others-readable'+ascii(34)+','+ascii(34)+'Others-writable'+ascii(34)+','+ascii(34)+'Others-executable'+ascii(34)+','+ascii(34)+'SUID bit set'+ascii(34)+','+ascii(34)+'SGID bit set'+ascii(34)+','+ascii(34)+'Sticky bit set'+ascii(34)+' );'
i=i+1;f(i)=''    
i=i+1;f(i)='    print_permissions(filename,&statbuf);'
i=i+1;f(i)=' '   
i=i+1;f(i)='    perm = statbuf.st_mode & -S_IFMT;'
i=i+1;f(i)='    for(i = 0; i < 12;i ++)'
i=i+1;f(i)='          check_permissions(perm, perm_flag[i], mesg[i]);'
i=i+1;f(i)='}'
n=i



printf("\n\n$ cat check_all_perm.c      # to open the file emp.lst")
halt(' ')
u=mopen('check_all_perm.c','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc

halt(' ')
 printf("$ cc check_all_perm.c")
 halt(' ')
 
 printf("\n$ a.out  /usr/bin/passwd ")
 halt(' ')
 printf("\nFile: /usr/bin/passwd     Permissions: 4511\nUser-readable\nUser-executable\nGroup-executable\nOthers-executable\nSUID bit set\n")
halt(' ')
 printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)


