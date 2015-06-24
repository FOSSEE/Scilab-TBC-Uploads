
clear
flag=1
mode(-1)
clc

printf("Example 12    :                                      Show the use of shift arguments \n")
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
halt('')
clc

li(1)='#!/bin/sh'
li(2)='# emp7.sh: Script using shift -- Saves first argument;for works with the rest'
li(3)='#'
li(4)='case $# in'
li(5)='    0|1) echo '+ascii(34)+'Usage: $0 file pattern(s)'+ascii(34)+' ; exit 2 ;;'
li(6)='    *) flname=$1        # store $1 as a variable before it gets lost'
li(7)='        shift'
li(8)='        for pattern in '+ascii(34)+'$@'+ascii(34)+' ; do     # Starts iteration with $2'
li(9)='                 grep '+ascii(34)+'$pattern'+ascii(34)+' $flname || echo '+ascii(34)+'Pattern $pattern not found'+ascii(34)
li(10)='        done'
li(11)='  esac'


printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:11
    printf("%s\n",li(i))
end
halt(' ')
clc


lst(1)='@echo off'
lst(2)='set b=0'
lst(3)='for %%x in (%*) do set /a b+=1'
lst(4)='set i=3'
lst(5)='set fille=%1'
lst(6)='shift /1'
lst(7)='findstr '+ascii(34)+'%1'+ascii(34)+' %fille%>res'
lst(8)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'res'+ascii(39)+') do set siz=%%~zA'
lst(9)=':loop'
lst(10)='if %siz% equ 0 echo Pattern %1 not found&&goto incr'
lst(11)='echo Search results for pattern %1'
lst(12)='echo ------------------------------------------------'
lst(13)='echo.'
lst(14)='type res'
lst(15)=':incr'
lst(16)='if %i% gtr %b% goto endloop'
lst(17)='shift /1'
lst(18)='del res'
lst(19)='findstr '+ascii(34)+'%1'+ascii(34)+' %fille%>res'
lst(20)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'res'+ascii(39)+') do set siz=%%~zA'
lst(21)='set /a i+=1'
lst(22)='echo.'
lst(23)='goto loop'
lst(24)=':endloop'
lst(25)='pause>NUL'
lst(26)='del res'

        
if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:26
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
