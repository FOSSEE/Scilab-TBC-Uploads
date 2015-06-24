
clear
flag=1
mode(-1)
clc

printf("Example 10    :                                      Show the use of while loop and sleep \n")
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

li(1)='#! /bin/sh'
li(2)='# monitfile.sh:Waits for a file to be created'
li(3)='#'
li(4)='while [ ! -r invoice.lst ]              # While the file invoice.lst cannot be read'
li(5)='do '
li(6)='           sleep 60                           # sleep for 60 seconds'
li(7)='done'
li(8)='alloc.pl                                       # Execute this program after exiting the loop'

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:8
    printf("%s\n",li(i))
end
halt(' ')
clc

lst(1)='@echo off'
lst(2)='cls'
lst(3)='echo This program keeps on looping until the file invoice.lst if exists is readonly'
lst(4)='echo Later it executes the script alloc.pl if it exists once it if readwrite type '
lst(5)=':loop'
lst(6)='set perm=r'
lst(7)='if  '+ascii(34)+'%perm%'+ascii(34)+'='+ascii(34)+'-'+ascii(34)+' goto endloop'
lst(8)=' ping -n 60 localhost>null'
lst(9)=' if  exist invoice.lst for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'invoice.lst'+ascii(39)+') do set att=%%~aA&&set perm=%att:~1,1%'
lst(10)='goto loop'
lst(11)=':endloop'
lst(12)='echo Executing alloc.pl if it exists' 
lst(13)='    if exists alloc.pl start alloc.pl'
lst(14)='        pause>NUL'
        
if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:14
    mfprintf(v,"%s\n",lst(i))
end
mclose(v)


printf("\n# type the following command in the command line interpreter as soon as it appears")
printf(" \n       %c  %s.sh     %c [COMMANDLINE ARGUMENTS][ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ %s.sh  [COMMANDLINE ARGUMENTS]             #to execute the perlscript",nam)

halt(' ')
dos('start')
printf("\n\n\n")
halt('   ---------------->Executing ShellScript in Command Line Prompt<-------------- ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)

mdelete(nam+'.sh.bat')
