clear
flag=1
clc
mode(-1)

printf("Example 8    :               Show the method of comparing files using cmp command \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the two files which you want to compare \n")
fil(1)=input('','s')
fil(2)=input('','s')
printf('\n\n $ cmp   %s  %s     #to compare the files %s and %s\n',fil(1),fil(2),fil(1),fil(2))

for i=1:2
if ~isfile(fil(i)) then
    flag(i)=0
    printf("\n%s : file not found \n",fil(i))
    printf("# Create a new file named %s?\n # y : Yes \n # n : No \n",fil(i))
    resp=input('','s')
    if resp=='y' then
        flag(i)=1
        printf("\n#***Enter the contents of the file %s*****\n# [Enter ^ in a newline to end and close the file]\n",fil(i))
        printf('\n\n$ cat > %s                      #to create a file named %s and fill its contents\n',fil(i),fil(i))
        fhdr=mopen(fil(i),'wt')
        count=1
        while %t
            cont=input(string(count)+'.  ','s')
            if (cont=='^') then
                break
            end
            mfprintf(fhdr,"%s\n",cont)
            count=count+1
        end
        mclose(fhdr)
    end
end
end


if flag(1)&flag(2) then
    clc
    printf("\n $ cmp   %s  %s    #to compare files %s and %s \n",fil(1),fil(2),fil(1),fil(2))
    fhdr1=mopen(fil(1),'rt')
    fhdr2=mopen(fil(2),'rt')
    l=0
    cr=1
    while %t
        [n,a1]=mfscanf(fhdr1,"%c")
        [n,a2]=mfscanf(fhdr2,"%c")
        if meof(fhdr1)&meof(fhdr2) then
           printf("  \n# No output means both the files are identical \n")
            break
         elseif (meof(fhdr1)&~meof(fhdr2))|(meof(fhdr2)&~meof(fhdr1))|a1~=a2
          printf(" %s  %s  differ :  char %d ,  line %d \n",fil(1),fil(2),cr,l+1)
          printf(" # This shows that %dth character in %dth line do not match\n\n",cr,l+1)
          break
         end
        cr=cr+1
        if ascii(a1)==10 then
            l=l+1
            cr=1
        end
    end
    mclose(fhdr1)
    mclose(fhdr2)
    halt('')
else
    printf("\n\n# file %s or %s is not found \n",fil(1),fil(2))
end


printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
