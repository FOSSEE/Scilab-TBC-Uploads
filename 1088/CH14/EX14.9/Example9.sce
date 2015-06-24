
clear
flag=1
mode(-1)
clc

printf("Example 9    :               Show the use of while loop \n")
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
li(2)='# emp5.sh: Shows use of the while loop'
li(3)='#'
li(4)='answer=y'
li(5)='while [ '+ascii(34)+'$answer'+ascii(34)+' = '+ascii(34)+'y'+ascii(34)+' ]   # The control command'
li(6)='do'
li(7)='echo '+ascii(34)+'Enter the code and description: \c'+ascii(34)+'>/dev/tty'
li(8)='read code description # Read both together'
li(9)='echo '+ascii(34)+'$code|$description'+ascii(34)+'>>newlist  # Append a line to newlist'
li(10)='echo '+ascii(34)+'Enter any more(y/n)? \c'+ascii(34)+'>/dev/tty'
li(11)='read anymore'
li(12)='case $anymore in'
li(13)='      y*|Y*) answer=y ;;   # also accepts yes,YES etc'
li(14)='      n*|N*) answer=n ;;  # also accepts no,NO elc'
li(15)='          *) answer=y ;;'
li(16)='esac'
li(17)='done'

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')


for i=1:17
    printf("%s\n",li(i))
end
halt(' ')
clc

lst(1)='@echo off&&cls'
lst(2)='set answer=y'
lst(3)=':loop'
lst(4)='if not '+ascii(34)+'%answer%'+ascii(34)+'=='+ascii(34)+'y'+ascii(34)+' goto endloop'
lst(5)='set /p varr=Enter the code and the description:  '
lst(6)='for /F  '+ascii(34)+'tokens=1,2* '+ascii(34)+' %%i in ( '+ascii(34)+'%varr%'+ascii(34)+') do set code=%%i&&set description=%%j '
lst(7)='echo %code%:%description%>>newlist'
lst(8)='set /p anymore=Enter any more (y/n)?  '
lst(9)='if '+ascii(34)+'%anymore%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' set answer=n&&goto loop'
lst(10)='if '+ascii(34)+'%anymore%'+ascii(34)+'=='+ascii(34)+'no'+ascii(34)+' set answer=n&&goto loop'
lst(11)='if '+ascii(34)+'%anymore%'+ascii(34)+'=='+ascii(34)+'No'+ascii(34)+' set answer=n&&goto loop'
lst(12)='if '+ascii(34)+'%anymore%'+ascii(34)+'=='+ascii(34)+'NO'+ascii(34)+' set answer=n&&goto loop'
lst(13)='if '+ascii(34)+'%anymore%'+ascii(34)+'=='+ascii(34)+'N'+ascii(34)+' set answer=n&&goto loop'
lst(14)='set answer=y'
lst(15)='goto loop'
lst(16)=':endloop'
lst(17)='pause>NUL'
lst(18)='echo.&&cls'
lst(19)='echo Do you want to see the file newlist'
lst(20)='set /p chh=Enter y for Yes and n for No:  '
lst(21)='if  '+ascii(34)+'%chh%'+ascii(34)+'=='+ascii(34)+'y'+ascii(34)+' type newlist'
lst(22)='pause>NUL&&echo Thank you&&del newlist'


if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end

v=mopen(nam+'.sh.bat','wt')
for i=1:22
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
