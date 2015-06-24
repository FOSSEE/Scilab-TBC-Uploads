clear
flag=1
mode(-1)
clc

printf("Example 4    :               Show the method of using if else construct in shell progamming \n")
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
li(2)='# emp3.sh : Using if and else'
li(3)='#'
li(4)='if grep '+ascii(34)+'^$1'+ascii(34)+'  /etc/passwd 2> /dev/null           #  Search username at beginning of line'
li(5)='then'
li(6)='           echo  '+ascii(34)+' Pattern found - Job Over '+ascii(34)
li(7)='else'
li(8)='           echo  '+ascii(34)+' Pattern not found '+ascii(34)
li(9)='fi'
printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:9
    printf("%s\n",li(i))
end
halt(' ')
clc
lst(1)='@echo off&&cls'
lst(2)='dir /b \Users>passwd'
lst(3)='findstr /b '+ascii(34)+'%1'+ascii(34)+' passwd > tmpfil '
lst(4)='set a=tmpfil '
lst(5)='for /F  '+ascii(34)+'usebackq '+ascii(34)+' %%A in ( '+ascii(39)+'%a% '+ascii(39)+') do set  y=%%~zA'
lst(6)='if %y% neq 0 (echo Pattern Found - Job Over) else (echo Pattern not found )'
lst(7)='pause>nul'
lst(8)='del tmpfil '
lst(9)='del passwd'

if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:9
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
mdelete('emp.lst')
