
clear
flag=1
mode(-1)
clc

printf("Example 11    :                                      Show the use of positional parameters in shells \n")
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

li(1)='#! /bin/sh'
li(2)='# emp6.sh -- Using a for loop with positional parameters'
li(3)='#'
li(4)='for pattern in '+ascii(34)+'$@'+ascii(34)+' ; do             # decided not to use $* in the previous section'
li(5)='    grep '+ascii(34)+'$pattern'+ascii(34)+' emp.lst||echo '+ascii(34)+'pattern $pattern not found'+ascii(34)
li(6)='done'

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:6
    printf("%s\n",li(i))
end
halt(' ')
clc

lst(1)='@echo off'
lst(2)='set b=0'
lst(3)='for %%x in (%*) do set /a b+=1'
lst(4)='set i=2'
lst(5)='findstr '+ascii(34)+'%1'+ascii(34)+' emp.lst>res'
lst(6)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'res'+ascii(39)+') do set siz=%%~zA'

lst(7)=':loop'
lst(8)='if %siz% equ 0 echo Pattern %1 not found&&goto incr'
lst(9)='echo Search results for pattern %1'
lst(10)='echo ------------------------------------------------'
lst(11)='echo.'
lst(12)='type res'

lst(13)=':incr'
lst(14)='if %i% gtr %b% goto endloop'
lst(15)='shift /1'
lst(16)='del res'
lst(17)='findstr '+ascii(34)+'%1'+ascii(34)+' emp.lst>res'
lst(18)='for /F '+ascii(34)+'usebackq'+ascii(34)+' %%A in ('+ascii(39)+'res'+ascii(39)+') do set siz=%%~zA'
lst(19)='set /a i+=1'
lst(20)='echo.'
lst(21)='goto loop'

lst(22)=':endloop'
lst(23)='pause>NUL'
lst(24)='del res'
        
if getos()=='Linux' then
    printf("\n\nPlease Switch to windows and then execute\n\nThank You \n\n")
    halt(' ')
    exit
end


v=mopen(nam+'.sh.bat','wt')
for i=1:24
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
