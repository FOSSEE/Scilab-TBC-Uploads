mode(-1)
clear
flag=1
clc

printf("Example 5    :               Show the method of file printing using the lp command \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the file which you want to print  \n\n")
nam=input('$ lp  ','s')
printf("# This sends the  file named %s to printer and gets status\n\n",nam)


if ~isfile(nam) then
    flag=0
    printf("\n%s : file not found \n",nam)
    printf("# Create a new file named %s?\n # y : Yes \n # n : No \n",nam)
    resp=input('','s')
    if resp=='y' then
        flag=1
        printf("\n#***Enter the contents of the file %s*****\n# [Enter ^ in a newline to end and close the file]\n",nam)
        printf('\n\n$ cat > %s                      #to create a file named %s and fill its contents\n',nam,nam)
        fhdr=mopen(nam,'wt')
        i=1
        while %t
            cont=input(string(i)+'.  ','s')
            if (cont=='^') then
                break
            end
            mfprintf(fhdr,"%s\n",cont)
            i=i+1
        end
        mclose(fhdr)
    end
end
if flag then
s=toprint(nam)
if s then
    printsetupbox()
else
    printf("\n\nlp : printer busy \n")
end
end

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
