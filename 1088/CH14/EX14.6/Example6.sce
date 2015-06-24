clear
flag=1
mode(-1)
clc

printf("Example 6    :                   Checks user inputs for null values and runs accordingly \n")
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
li(2)='# emp4.sh : Checks user input for null values.Finally runs emp3a.sh'
li(3)='#'
li(4)='if  [ $# -eq 0 ]; then'
li(5)='      echo '+ascii(34)+'Enter the string to be searched : \c'+ascii(34)
li(6)='      read pname'
li(7)='  if [ -z '+ascii(34)+'$pname'+ascii(34)+' ] ; then'
li(8)='echo '+ascii(34)+'You have not entered the string '+ascii(34)+' ; exit 1'
li(9)='fi'
li(10)='echo '+ascii(34)+' Enter the filename to be used : \c '+ascii(34)
li(11)='read flname'
li(12)='if [ ! -n '+ascii(34)+'$flname'+ascii(34)+'] ; then         #!-n same as -z'
li(13)='echo '+ascii(34)+'You have not entered the filename '+ascii(34)+' ; exit 2'
li(14)='fi'
li(15)='emp3a.sh '+ascii(34)+'$pname'+ascii(34)+'  '+ascii(34)+'$flname'+ascii(34)'+ascii(34)+'    # Runs script to do the job'
li(16)='elif test $# -eq 2 : then'
li(17)='else'
li(18)='emp3a.sh $*'
li(19)='fi'

printf("\n# Enter the name of the shellscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')

for i=1:19
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



v=mopen('emp3a.sh.bat','wt')
for i=1:16
    mfprintf(v,"%s\n",lss(i))
end
mclose(v)

lss(1)='@echo off'
lss(2)='cls'
lss(3)='set argct=0'
lss(4)='for %%x in (%*) do set /a argct+=1'
lss(5)='if %argct% equ 0 goto intake'
lss(6)='emp3a.sh %*'
lss(7)='goto endx'
lss(8)=':intake'
lss(9)='set /p pname=Enter the string to be searched:' 
lss(10)='if  '+ascii(34)+'%pname%'+ascii(34)+'=='+ascii(34)+''+ascii(34)+'  echo You have not entered the string&&goto endx'
lss(11)='set /p flname=Enter the filename to be used: '
lss(12)='if  '+ascii(34)+'%flname%'+ascii(34)+'=='+ascii(34)+''+ascii(34)+' echo You have not entered the filename&&goto endx'
lss(13)='emp3a.sh %pname% %flname%'
lss(14)=':endx'
lss(15)='pause>null'

v=mopen(nam+'.sh.bat','wt')
for i=1:15
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

mdelete('emp3a.sh.bat')
