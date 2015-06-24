clear
flag=1
mode(-1)
clc

printf("Example 3    :               Show the method of using command line arguments to take inputs \n")
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
li(2)='# emp1.sh : Interactive version - uses read to take two inputs'
li(3)='#'
li(4)='echo '+ascii(34)+'Program:  $0  '+ascii(34)+'      #$0 has the program name'
li(5)='echo  '+ascii(34)+'The number of arguments specified is $# '+ascii(34)
li(6)='echo  '+ascii(34)+'The arguments are $* '+ascii(34) + '   #All arguments in $*'
li(7)='grep  '+ascii(34)+'$1'+ascii(34)+'$2'
li(8)='echo  '+ascii(34)+'\nJob Over '+ascii(34)

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:8
    printf("%s\n",li(i))
end
halt(' ')
clc
lst(1)='@echo off'


lst(2)='echo Program:  '+nam+'.sh'
lst(3)='set a=0'
lst(4)='for %%x in (%*) do set /A a+=1'
lst(5)='echo The number of arguments specified is %a%'
lst(6)='echo The arguments are %*'
lst(7)='findstr /C:'+ascii(34)+'%1'+ascii(34)+' %2'
lst(8)='echo.'
lst(9)='echo Job Over'
lst(10)='pause>null'

if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end




v=mopen(nam+'.sh.bat','wt')
for i=1:10
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
