clear
flag=1
mode(-1)
clc

printf("Example 7    :               Show the method of determining the attributes of a file in unix \n")
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
li(2)='# filetest.sh : Tests file attributes'
li(3)='#'
li(4)='if [ ! -e $1 ]; then'
li(5)='echo '+ascii(34)+'File does not exist'+ascii(34)
li(6)='elif [! -r $1]; then '
li(7)='echo '+ascii(34)+'File is not readable'+ascii(34)
li(8)='elif [! -w $1]; then'
li(9)='echo '+ascii(34)+'File is not writable'+ascii(34)
li(10)='else'
li(11)='    echo '+ascii(34)+'File is both readable and writable'+ascii(34)
li(12)='    fi'



printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:12
    printf("%s\n",li(i))
end
halt(' ')
clc

lss(1)='@echo off'
lss(2)='if not  exist %1 echo file does not exist&&goto ends'
lss(3)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'%1'+ascii(39)+') do  set attr=%%~aA&&set '+ascii(34)+'wrtatt=%attr:~1,1%'+ascii(34)+''
lss(4)='if '+ascii(34)+'%wrtatt%'+ascii(34)+'=='+ascii(34)+'-'+ascii(34)+' (goto rdwt) else goto rdnwt'
lss(6)=':rdwt    '
lss(7)='echo File is both readable and writable&&goto ends'
lss(8)=':rdnwt '
lss(9)='echo File is not writable'
lss(10)=':ends'
lss(11)='pause>nul'

if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:11
    mfprintf(v,"%s\n",lss(i))
end
mclose(v)

if getos()=='Linux' then
    printf("\n\nPlease open another terminal,then go to the directory %s  and then execute using the following instruction\n\n$ shell %s.sh \n\nThank You \n\n",curr,nam)
    halt(' ')
    exit
end


printf("\n# type the following command in the command line interpreter as soon as it appears")
printf(" \n       %c  %s.sh     %c [COMMANDLINE ARGUMENTS][ENTER]\n\n",ascii(34),nam,ascii(34))
printf("\nPLEASE EXECUTE THE SCRIPT IN THE COMMAND PROMPT TWICE IF YOU DO NOT GET THE OUTPUT IN THE \n FIRST ATTEMPT.THERE IF SOME TECHNICAL ERROR\nSORRY FOR THE INCONVENIENCE CAUSED")
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
