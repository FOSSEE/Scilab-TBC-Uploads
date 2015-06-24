clear
flag=1
mode(-1)
clc

printf("Example 2    :               Show the method of calling functions in shellscripts \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")

halt('')
clc
i=0
i=i+1;f(i)='#! /bin/sh'
i=i+1;f(i)='# Script: user_passwd.sh - Uses a shell function'
i=i+1;f(i)='#'
i=i+1;f(i)='.mainfunc.sh                     # Script containing valid_string function'
i=i+1;f(i)=''
i=i+1;f(i)='valid_string() {'
i=i+1;f(i)='    while echo '+ascii(34)+'$1 \c'+ascii(34)+' 1>&2 ; do'
i=i+1;f(i)='         read name'
i=i+1;f(i)='         case $name in'
i=i+1;f(i)='                '+ascii(34)+''+ascii(34)+') echo '+ascii(34)+'Nothing entered'+ascii(34)+' 1>&2 ; continue ;;'
i=i+1;f(i)='                 *) if [ `expr '+ascii(34)+'$name'+ascii(34)+' : '+ascii(39)+'.*'+ascii(39)+'` -gt $2 ] ; then'
i=i+1;f(i)='                       echo '+ascii(34)+'Maximum $2 characters permitted'+ascii(34)+' 1>&2'
i=i+1;f(i)='                    else'
i=i+1;f(i)='                       break'
i=i+1;f(i)='                    fi ;;'
i=i+1;f(i)='         esac'
i=i+1;f(i)='    done'
i=i+1;f(i)='    echo $name'
i=i+1;f(i)='}'
i=i+1;f(i)=''
i=i+1;f(i)='user=`valid_string '+ascii(34)+'Enter your user-id :'+ascii(34)+' 16`'
i=i+1;f(i)='stty -echo                     # Password not to be echoed'
i=i+1;f(i)='password=`valid_string '+ascii(34)+'Enter your password:'+ascii(34)+' 5`'
i=i+1;f(i)='stty echo                      # Turns on echoing facility'
i=i+1;f(i)='echo '+ascii(34)+'\nYour user-id is $user and your password is $password'+ascii(34)+''
n=i
printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:n
    printf("%s\n",f(i))
end
halt(' ')
clc
i=0
i=i+1;f(i)='#!/usr/bin/perl' 
i=i+1;f(i)='$username = &take_input('+ascii(34)+'Enter your user-id: '+ascii(34)+', '+ascii(34)+'16'+ascii(34)+')  ;'
i=i+1;f(i)='$password = &take_input('+ascii(34)+'Enter your password: '+ascii(34)+', '+ascii(34)+'5'+ascii(34)+','+ascii(34)+'noecho'+ascii(34)+') ;'
i=i+1;f(i)='print  '+ascii(34)+'\nYour user-id is $username and your password is $password\n'+ascii(34)+' ;'
i=i+1;f(i)='sub take_input { '
i=i+1;f(i)='my ($prompt,$len,$flag) = @_ ;' 
i=i+1;f(i)='while (1) { '
i=i+1;f(i)='print('+ascii(34)+'$prompt'+ascii(34)+') ;'
i=i+1;f(i)='use Term::ReadKey;'
i=i+1;f(i)='ReadMode 2       if  (@_==3);'
i=i+1;f(i)='chop($name=<STDIN>);    '
i=i+1;f(i)='ReadMode 0     if (@_==3);'
i=i+1;f(i)='if ( length($name) eq 0 ) { printf '+ascii(34)+'\nNothing entered\n'+ascii(34)+' ; next }'
i=i+1;f(i)='if ( length($name) > $len) { printf '+ascii(34)+'Maximum %d characters permitted\n'+ascii(34)+' , $len ; next }'
i=i+1;f(i)='last if $name =~ /\w/  ;'
i=i+1;f(i)='}'
i=i+1;f(i)='$name   ;'
i=i+1;f(i)='}'
n=i



v=mopen(nam+'.pl','wt')
for i=1:n
    mfprintf(v,"%s\n",f(i))
end
mclose(v)


i=0
i=i+1;f(i)='@echo off'
i=i+1;f(i)=nam+'.pl'
i=i+1;f(i)='pause>NUL'
i=i+1;f(i)='del  '+nam+'.pl'
n=i
v=mopen(nam+'.bat','wt')
for i=1:n
    mfprintf(v,"%s\n",f(i))
end
mclose(v)

if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute using the instructions\n\nThank You \n\n")
    halt(' ')
    exit
end
printf("\n# type the following command in the command line interpreter as soon as it appears")
printf(" \n       %c  %s     %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ %s             #to execute the perlscript",nam)

halt(' ')
dos('start')
printf("\n\n\n")
halt('   ---------------->Executing ShellScript in Command Line Prompt<-------------- ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)

mdelete(nam+'.bat')
mdelete('emp.lst')
mdelete(nam+'.pl')
