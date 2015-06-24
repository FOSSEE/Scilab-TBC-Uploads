clear
flag=1
mode(-1)
clc

printf("Example 5    :               Show the method of using if-elif construct in shell \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")
i=0
i=i+1;f(i)='2233|a.k.shukla             |g.m.        |sales           |12/12/52|6000'
i=i+1;f(i)='9876|jai sharma             |director  |production |12/03/50|7000'
i=i+1;f(i)='5678|sumit chakrobarty|d.g.m      |marketing  |19/04/43|6000'
i=i+1;f(i)='2356|barun sengupta      |director  |personnel  |11/05/47|7800'
i=i+1;f(i)='5423|n.k. gupta              |chairman |admin       |30/08/56|5400'
i=i+1;f(i)='1006|chanchal singhvi   |director  |sales          |03/09/38|6700'
i=i+1;f(i)='6213|karuna ganguly      |g.m.        |accounts   |05/06/62|6300'
i=i+1;f(i)='1265|s.n. dasgupta         |manager  |sales          |12/09/63|5600'
i=i+1;f(i)='4290|jayant Choudhary  |executive |production|07/09/50|6000'
i=i+1;f(i)='2476|anil aggarwal        |manager   |sales          |01/05/59|5000'
i=i+1;f(i)='6521|lalit chowdury       |director    |marketing |26/09/45|8200'
i=i+1;f(i)='3212|shyam saksena      |d.g.m        |accounts   |12/12/55|6000'
i=i+1;f(i)='3564|sudhir Agarwal     |executive  |personnel  |06/07/47|7500'
i=i+1;f(i)='2345|j.b. saxena            |g.m.           |marketing |12/03/45|8000'
i=i+1;f(i)='0110|v.k. agrawal         |g.m.           |marketing  |31/02/40|9000'
n=i
printf("\n\n$ cat emp.lst      # to open the file emp.lst")
halt(' ')
u=mopen('emp.lst','wt')
for i=1:n
    mfprintf(u,"%s\n",f(i))
    printf("%s\n",f(i))
end
mclose(u)
halt('')
clc
li(1)='#!/bin/sh'
li(2)='# emp3a.sh : Using test , $0 and $# in an if-elif-if construct'
li(3)='#'
li(4)='if test $# -eq 0 ; then'
li(5)='      echo '+ascii(34)+'Usage: $0 pattern file'+ascii(34)+' >/dev/tty'
li(6)='elif test $# -eq 2 : then'
li(7)='     grep '+ascii(34)+'$1'+ascii(34)+' $2 || echo '+ascii(34)+'$1 not found in $2'+ascii(34)+' > /dev/tty'
li(8)='else'
li(9)='    echo '+ascii(34)+'You did not enter two arguments'+ascii(34)+' >/dev/tty'
li(10)='fi'

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:10
    printf("%s\n",li(i))
end
halt(' ')
clc

lss(1)='@echo off'
lss(2)='set x=0'
lss(3)='for %%d in (%*) do set /a x+=1'
lss(4)='if %x% equ 0 echo Usage nam pattern file&&goto endd'
lss(5)='if %x% equ 2 goto process'
lss(6)='if %x% neq 2 echo You didn'+ascii(39)+'t enter two arguments&&goto endd'
lss(7)=':process'
lss(8)='findstr '+ascii(34)+'%1'+ascii(34)+' %2>result1'
lss(9)='set b='+ascii(34)+'result1'+ascii(34)
lss(10)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'%b%'+ascii(39)+') do set si=%%~zA'
lss(11)='if %si% equ 0 echo %1 not found in %2&&goto endd'
lss(12)='type result1'
lss(13)=':endd'
lss(14)='echo.'
lss(15)='pause>null'
lss(16)='if exist result1 del result1'


if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:16
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
