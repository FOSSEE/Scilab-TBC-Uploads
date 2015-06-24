clear
flag=1
mode(-1)
clc

printf("Example 8    :               Show the method of using if else construct in shell progamming \n")
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
li(1)='#!/bin/sh'
li(2)='#menu.sh:Uses case to offer 5-item menu'
li(3)='#'
li(4)='echo '+ascii(34)+'                  MENU\n1.List of files\n2.Processes of user\n3. Todays date'
li(5)='4.Users of system\n5. Quit the shell\nEnter your option: \c'+ascii(34)+''
li(6)='read choice'
li(7)='case '+ascii(34)+'$choice'+ascii(34)+' in'
li(8)='    1) ls -l ;;'
li(9)='    2) ps -f ;;'
li(10)='    3)date ;;'
li(11)='    4)who ;;'
li(12)='    5)exit ;;'
li(13)='    *) echo '+ascii(34)+'Invalid Option'+ascii(34)+'         # ;; not really required for the last option'
li(14)='    end'
li(15)='    esac'

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:15
    printf("%s\n",li(i))
end
halt(' ')
clc

lss(1)='@echo off'
lss(2)='cls'
lss(3)='echo.'
lss(4)='echo.'
lss(5)='echo                    MENU'
lss(6)=':retrn'
lss(7)='echo.'
lss(8)='echo 1. List of files'
lss(9)='echo 2. Processes of user'
lss(10)='echo 3. Today'+ascii(34)+'s date'
lss(11)='echo 4. Users of system'
lss(12)='echo 5. Quit to UNIX'
lss(13)='choice /c 123456 /d 6 /t 20 /n /m '+ascii(34)+'Enter your option'+ascii(34)+''
lss(14)='if ERRORLEVEL 6 pause>NUL&&echo Invalid option&&goto retrn'
lss(15)='if ERRORLEVEL 5 pause>NUL&&exit'
lss(16)='if ERRORLEVEL 4 pause>NUL&&net user&&goto ends'
lss(17)='if ERRORLEVEL 3 pause>NUL&&powershell date&&goto ends'
lss(18)='if ERRORLEVEL 2 pause>NUL&&tasklist&&goto ends'
lss(19)='if ERRORLEVEL 1 pause>NUL&&dir&&goto ends'
lss(20)=':ends'
lss(21)='pause>NUL'

if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:21
    mfprintf(v,"%s\n",lss(i))
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
mdelete('emp.lst')
