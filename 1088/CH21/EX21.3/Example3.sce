clear
flag=1
mode(-1)
clc

printf("Example 3    :               Show the method of using eval in the shellscripts \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n4. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")

halt('')
clc

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')
i=0
i=i+1;f(i)='#!/bin/sh'
i=i+1;f(i)='# Script: dentry2.sh - Uses eval and shell functions'
i=i+1;f(i)='#'
i=i+1;f(i)='trap '+ascii(39)+'echo '+ascii(34)+'Program interrupted'+ascii(34)+';exit'+ascii(39)+' HUP INT TERM'
i=i+1;f(i)='. mainfunc.sh               # Invokes functions valid_string() and anymore ()'
i=i+1;f(i)=''
i=i+1;f(i)='prompt1='+ascii(34)+'Employee id : '+ascii(34)+' ; prompt2='+ascii(34)+'Name : '+ascii(34)+'; prompt3='+ascii(34)+'Designation : '+ascii(34)+''
i=i+1;f(i)='prompt4='+ascii(34)+'Department : '+ascii(34)+' ; prompt5='+ascii(34)+'Date birth : '+ascii(34)+';prompt6='+ascii(34)+'Basic pay : '+ascii(34)+''
i=i+1;f(i)='rekord='
i=i+1;f(i)=''
i=i+1;f(i)='flname=`valid_string '+ascii(34)+'Enter the output filename: '+ascii(34)+' 8`'
i=i+1;f(i)='while true ; do'
i=i+1;f(i)='    while [ ${x:=1} -le 6 ] ; do       # x first set to 1'
i=i+1;f(i)='         eval echo \$prompt$x '+ascii(39)+'\\c'+ascii(39)+' 1>&2'
i=i+1;f(i)='         read value$x'
i=i+1;f(i)='         rekord='+ascii(34)+'${rekord}`eval echo \\$value$x`|'+ascii(34)+''
i=i+1;f(i)='         x=`expr $x + 1`'
i=i+1;f(i)='     done'
i=i+1;f(i)='     echo '+ascii(34)+'$rekord'+ascii(34)+''
i=i+1;f(i)='     anymore '+ascii(34)+'More entries to add'+ascii(34)+' 1&>2 || break'
i=i+1;f(i)='done > $flname'
i=i+1;f(i)=''
i=i+1;f(i)='anymore() {'
i=i+1;f(i)='     echo '+ascii(34)+'\n$1 ?(y/n) : \c'+ascii(34)+' 1>&2'
i=i+1;f(i)='     read response'
i=i+1;f(i)='     case '+ascii(34)+'$response'+ascii(34)+' in'
i=i+1;f(i)='          y/Y) echo 1>&2 ; return 0 ;;'
i=i+1;f(i)='            *) return 1 ;;'
i=i+1;f(i)='     esac'
i=i+1;f(i)='}'
n=i 

for i=1:n
    printf("%s\n",f(i))
end
halt(' ')
clc
i=0
i=i+1;f(i)='@echo off'
i=i+1;f(i)='set /P flname=Enter the output filename: '
i=i+1;f(i)='if exist %flname% del %flname%'
i=i+1;f(i)='set response=y'
i=i+1;f(i)=':loop'
i=i+1;f(i)='if /I '+ascii(34)+'%response%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endloop'
i=i+1;f(i)='echo.'
i=i+1;f(i)='set /P eid=Employee id : '
i=i+1;f(i)='set /P nam=Name : '
i=i+1;f(i)='set /P desig=Designation : '
i=i+1;f(i)='set /P dept=Department : '
i=i+1;f(i)='set /P dob=Date birth : '
i=i+1;f(i)='set /P bas=Basic pay : '
i=i+1;f(i)='echo.'
i=i+1;f(i)='echo %eid%:%nam%:%desig%:%dept%:%dob%:%bas%:>>%flname%'
i=i+1;f(i)='set /P response=More entries to add ?(y/n) : '
i=i+1;f(i)='goto loop'
i=i+1;f(i)=':endloop'
i=i+1;f(i)='pause>NUL'
i=i+1;f(i)='echo.'
i=i+1;f(i)='echo.'
i=i+1;f(i)='set /p res2= Do you want to see the file %flname%?(y/n) :  '
i=i+1;f(i)='if /I '+ascii(34)+'%res2%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endd'
i=i+1;f(i)='echo $ cat %flname%'
i=i+1;f(i)='type %flname%'
i=i+1;f(i)=':endd'
i=i+1;f(i)='pause>NUL' 
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
printf(" \n       %c  %s.sh     %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ %s.sh             #to execute the perlscript",nam)

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
