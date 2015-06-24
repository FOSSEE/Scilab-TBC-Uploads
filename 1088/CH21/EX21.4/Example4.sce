clear
flag=1
mode(-1)
clc

printf("Example 4    :               Show the method of using exec command to make many streams \n")
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
i=0
i=i+1;f(i)='#!/bin/sh'
i=i+1;f(i)='# Script: countpat.sh -- Uses exec to handle multiple files'
i=i+1;f(i)='#'
i=i+1;f(i)='exec > $2                # Open file 1 for storing selected lines'
i=i+1;f(i)='exec 3> $3               # Open file 3 for storing patterns not found'
i=i+1;f(i)='exec 4> $4               # Open file 4 for storing invalid patterns'
i=i+1;f(i)=''
i=i+1;f(i)='[ $# -ne 4 ] && { echo '+ascii(34)+'4 arguments required'+ascii(34)+' ; exit 2 ; }'
i=i+1;f(i)=''
i=i+1;f(i)='exec < $1                 # Redirecting output'
i=i+1;f(i)='while read pattern ; do '
i=i+1;f(i)='      case '+ascii(34)+'$pattern'+ascii(34)+' in'
i=i+1;f(i)='             ????) grep $pattern emp.lst ||'
i=i+1;f(i)='                   echo $pattern not found in file 1>&3 ;;'
i=i+1;f(i)='                *) echo $pattern not a four-character string 1>&4 ;;'
i=i+1;f(i)='      esac'
i=i+1;f(i)='done'
i=i+1;f(i)='exec > \/dev/tty        # Redirects standard output back to terminal'
i=i+1;f(i)='echo Job Over'
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
i=i+1;f(i)='for %%x in (%*) do set /a ccc+=1'
i=i+1;f(i)='if %ccc% neq 4 echo 4 arguments required&&goto endd'
i=i+1;f(i)='echo.'
i=i+1;f(i)='echo -----------Creating file %1-----------------'
i=i+1;f(i)='set chice=y'

i=i+1;f(i)=':loop1'
i=i+1;f(i)='if /I '+ascii(34)+'%chice%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endloop1'
i=i+1;f(i)='set /P inp=Enter the employee-id : '
i=i+1;f(i)='echo %inp%>>%1'
i=i+1;f(i)='if exist len del len'
i=i+1;f(i)='echo.%inp%>len'
i=i+1;f(i)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%i in ('+ascii(39)+'len'+ascii(39)+') do set len=%%~zi'
i=i+1;f(i)='del len&&set /a len-=2'
i=i+1;f(i)='if %len% neq 4 echo %inp% is not a four-character string>>%4&&goto chi'
i=i+1;f(i)='if exist res del res'
i=i+1;f(i)='findstr /B '+ascii(34)+'%inp%'+ascii(34)+' emp.lst>res'
i=i+1;f(i)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%i in ('+ascii(39)+'res'+ascii(39)+') do set siz=%%~zi'
i=i+1;f(i)='if %siz% equ 0 echo %inp% not found in file>>%3&&goto chi'
i=i+1;f(i)='type res>>%2'
i=i+1;f(i)=':chi'
i=i+1;f(i)='set /P chice=Do you want to continue?(y/n) : '
i=i+1;f(i)='cls&&goto loop1'
i=i+1;f(i)=':endloop1'
i=i+1;f(i)='set /P c1=Do you want to see the file %1?(y/n) : '
i=i+1;f(i)='if /I '+ascii(34)+'%c1%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endloop2'
i=i+1;f(i)='type %1'
i=i+1;f(i)=':endloop2'
i=i+1;f(i)='set /P c2=Do you want to see the file %2?(y/n) : '
i=i+1;f(i)='if /I '+ascii(34)+'%c2%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endloop3'
i=i+1;f(i)='type %2'
i=i+1;f(i)=':endloop3'
i=i+1;f(i)='set /P c3=Do you want to see the file %3?(y/n) : '
i=i+1;f(i)='if /I '+ascii(34)+'%c3%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endloop4'
i=i+1;f(i)='type %3'
i=i+1;f(i)=':endloop4'
i=i+1;f(i)='set /P c4=Do you want to see the file %4?(y/n) : '
i=i+1;f(i)='if /I '+ascii(34)+'%c4%'+ascii(34)+'=='+ascii(34)+'n'+ascii(34)+' goto endloop2'
i=i+1;f(i)='type %4'
i=i+1;f(i)=':endloop5'
i=i+1;f(i)='pause>NUL&&del %1&&del %2&&del %3&&del %4&&del res'
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
