
clear
flag=1
mode(-1)
clc

printf("Example 12    :                                      Show the use of set command and the here documenting \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")
i=0
i=i+1;f(i)='01|accounts|6213'
i=i+1;f(i)='02|admin|5423'
i=i+1;f(i)='03|marketing|6521'
i=i+1;f(i)='04|personnel|2365'
i=i+1;f(i)='05|production|9876'
i=i+1;f(i)='06|sales|1006'
n=i
printf("\n\n$ cat limitlist      # to open the file emp.lst")
halt(' ')
u=mopen('limitlist','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
halt('')
clc

i=0
i=i+1;f(i)='#! /bin/sh'
i=i+1;f(i)='# valcode.sh : Uses a here document to look up for a code list'
i=i+1;f(i)='#'
i=i+1;f(i)='IFS='+ascii(34)+'|'+ascii(34)+'     # Reset field seperator'
i=i+1;f(i)='while echo '+ascii(34)+'Enter department code  : \c'+ascii(34)+':do'
i=i+1;f(i)='read dcode'
i=i+1;f(i)='set -- `grep '+ascii(34)+'^$dcode'+ascii(34)+' << limit'
i=i+1;f(i)='01|accounts|6213'
i=i+1;f(i)='02|admin|5423'
i=i+1;f(i)='03|marketing|6521'
i=i+1;f(i)='04|personnel|2365'
i=i+1;f(i)='05|production|69876'
i=i+1;f(i)='06|sales|1006'
i=i+1;f(i)='limit`'
i=i+1;f(i)='              # Closing ` marks end of standard input'
i=i+1;f(i)='   case $# in'
i=i+1;f(i)='            3) echo '+ascii(34)+'Department name     : $2\nEmp-id of head of dept : $3\n'+ascii(34)
i=i+1;f(i)='               shift 3;;    #Flush out the positional parameters'
i=i+1;f(i)='            *) echo '+ascii(34)+'Invalid code'+ascii(34)+'  ; continue'
i=i+1;f(i)='esac'
i=i+1;f(i)='done'
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
i=i+1;f(i)='@echo off'
i=i+1;f(i)='echo Executing Validation Programme'
i=i+1;f(i)='set Continue?...'
i=i+1;f(i)='pause>NUL'
i=i+1;f(i)='set chh=y'
i=i+1;f(i)=':loop'
i=i+1;f(i)='if /I not '+ascii(34)+'%chh%'+ascii(34)+'=='+ascii(34)+'y'+ascii(34)+' goto endloop '
i=i+1;f(i)='set /P dcode=Enter department code  :  '
i=i+1;f(i)='del res'
i=i+1;f(i)='del lst'
i=i+1;f(i)='findstr /B '+ascii(34)+'%dcode%'+ascii(34)+' limitlist.txt>res'
i=i+1;f(i)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'res'+ascii(39)+') do set siz=%%~zA'
i=i+1;f(i)='if %siz% equ 0 echo Invalid code&&set chh=y&&goto loop'

i=i+1;f(i)='for /F '+ascii(34)+'tokens=2,3 delims=|'+ascii(34)+' %%i in (res) do set dname=%%i&&set id=%%j'
i=i+1;f(i)='echo Department name          : %dname%'
i=i+1;f(i)='echo Emp-id of head of dept   : %id%'


i=i+1;f(i)='echo.'
i=i+1;f(i)='set /P chh=Continue?(y/n)  :'
i=i+1;f(i)='goto loop'
i=i+1;f(i)=':endloop'
i=i+1;f(i)='pause>NUL'
n=i
        
if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:n
    mfprintf(v,"%s\n",f(i))
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
mdelete('limitlist')
