clear
flag=1
mode(-1)
clc

printf("Example 1    :               Show the method of using arrays in advanced shellscripting \n")
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
i=i+1;f(i)='#!/usr/bin/ksh'
i=i+1;f(i)='# Script: dateval.sh - validates a date field using an array'
i=i+1;f(i)='IFS='+ascii(34)+'/'+ascii(34)+''
i=i+1;f(i)='n='+ascii(34)+'[0-9][0-9]'+ascii(34)+''
i=i+1;f(i)='set -A month arr 0 31 29 31 30 31 30 31 30 31 30 31'
i=i+1;f(i)='while echo '+ascii(34)+'Enter a date: \c'+ascii(34)+' ; do'
i=i+1;f(i)='     read value'
i=i+1;f(i)='     case '+ascii(34)+'$value'+ascii(34)+' in'
i=i+1;f(i)='           '+ascii(34)+''+ascii(34)+') echo '+ascii(34)+'No date entered'+ascii(34)+' ; continue ;;'
i=i+1;f(i)='     $n/$n/$n) set $value'
i=i+1;f(i)='               let rem='+ascii(34)+'$3 % $4'+ascii(34)+''
i=i+1;f(i)='               if [ $2 -gt 12 -o $2 -eq 0 ] ; then'
i=i+1;f(i)='                  echo '+ascii(34)+'Illegal month'+ascii(34)+' ; continue'
i=i+1;f(i)='               else'
i=i+1;f(i)='                  case '+ascii(34)+'$value'+ascii(34)+' in'
i=i+1;f(i)='               29/02/??) [ $rem -gt 0 ] &&'
i=i+1;f(i)='                         { echo '+ascii(34)+'20$3 is not a leap year'+ascii(34)+' ; continue ; } ;;'
i=i+1;f(i)='                      *) [ $1 -gt ${month_arr[$2]} -o $1 -eq 0 ] &&'
i=i+1;f(i)='                         { echo '+ascii(34)+'Illegal day'+ascii(34)+' ; continue ; } ;;'
i=i+1;f(i)='                  esac'
i=i+1;f(i)='               fi;;'
i=i+1;f(i)='              *) echo '+ascii(34)+'Invalid date'+ascii(34)+' ; continue ;;'
i=i+1;f(i)='    esac'
i=i+1;f(i)='    echo '+ascii(34)+'$1/$2/$3'+ascii(34)+' is a valid date'
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
i=i+1;f(i)='set chc=y'
i=i+1;f(i)=':loop'
i=i+1;f(i)='if /I '+ascii(34)+'%chc%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endloop'
i=i+1;f(i)='set /P dat=Enter a date: '
i=i+1;f(i)='if '+ascii(34)+'%dat%'+ascii(34)+' equ '+ascii(34)+''+ascii(34)+' echo No date entered&&goto chci'
i=i+1;f(i)='if exist testt del testt'
i=i+1;f(i)='echo %dat%>testt'
i=i+1;f(i)='for /F '+ascii(34)+'tokens=1,2,3 delims=/'+ascii(34)+' %%i in (testt) do set dd=%%i&&set mm=%%j&&set yy=%%k'
i=i+1;f(i)='if %mm% gtr 12 echo Illegal month&&goto chci'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'01'+ascii(34)+' set ulim=31&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'03'+ascii(34)+' set ulim=31&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'04'+ascii(34)+' set ulim=30&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'05'+ascii(34)+' set ulim=31&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'06'+ascii(34)+' set ulim=30&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'07'+ascii(34)+' set ulim=31&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'08'+ascii(34)+' set ulim=31&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'09'+ascii(34)+' set ulim=30&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'10'+ascii(34)+' set ulim=31&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'11'+ascii(34)+' set ulim=30&&goto printing'
i=i+1;f(i)='if '+ascii(34)+'%mm%'+ascii(34)+'=='+ascii(34)+'12'+ascii(34)+' set ulim=31&&goto printing'
i=i+1;f(i)='set /a rem=yy%%4'
i=i+1;f(i)='if %rem% neq 0 set ulim=28&&goto nlpyear'
i=i+1;f(i)='set ulim=29'
i=i+1;f(i)='goto printing'
i=i+1;f(i)=':nlpyear'
i=i+1;f(i)='if '+ascii(34)+'%dd%'+ascii(34)+'=='+ascii(34)+'29'+ascii(34)+' echo 20%yy% is not a leap year&&goto chci'
i=i+1;f(i)=':printing'
i=i+1;f(i)='if %dd% leq %ulim% echo %dat% is a valid date&&goto chci'
i=i+1;f(i)='echo Illegal day '
i=i+1;f(i)=':chci'
i=i+1;f(i)='set /p chc=Do you want to continue ? (y/n) : ' 
i=i+1;f(i)='goto loop'
i=i+1;f(i)=':endloop'
i=i+1;f(i)='pause>NUL&&del testt'
n=i

if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute using the instructions\n\nThank You \n\n")
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
mdelete('emp.lst')
