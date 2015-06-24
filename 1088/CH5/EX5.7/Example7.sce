clear
flag=1
clc
mode(-1)

printf("Example 7    :               Show the method of file handling using the od command \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the file which you want to access  \n\n")
nam=input('$ od  ','s')
printf("# This searches for a file named %s \n\n",nam)


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

if flag==1 then
    i=1
    clc
    printf("\n $ od %s     #to display %s in octal characters\n\n",nam,nam)
    printf("\n          ===========> %s <============\n\n\n",nam)
    fhdr=mopen(nam,'rt')
    while %t
        [n,a]=mfscanf(fhdr,"%c")
        if meof(fhdr) then
            break
        end
        printf(" %o",ascii(a))
        if ascii(a)==10 then
            printf("\n")
        end
        i=i+1
    end
    mclose(fhdr)
    printf("\n\n%d characters present in the file.\n[hit ENTER to continue]\n",i)
    halt('')
else
    printf("\n\n# file %s is not found and not created also\n",nam)
end

flag=flag+1

octs=blanks(0)
if flag==2 then
    i=1
    clc
     printf("\n $ od -bc %s     #to display %s in octal characters\n\n",nam,nam)
    printf("\n          ===========> %s <============\n\n\n",nam)
    fhdr=mopen(nam,'rt')
    while %t
        [n,a]=mfscanf(fhdr,"%c")
        if meof(fhdr) then
            break
        end
        printf("   %c  ",a)
        octs=octs+string(dec2oct(ascii(a)))+'  '
        if ascii(a)==10 then
            printf("%s\n\n",octs)
            clear('octs')
            octs=blanks(0)
        end
        i=i+1
    end
    mclose(fhdr)
    printf("\n\n%d characters present in the file.\n[hit ENTER to continue]\n",i)
    halt('')
else
    printf("\n\n# file %s is not found and not created also\n",nam)
end

printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
