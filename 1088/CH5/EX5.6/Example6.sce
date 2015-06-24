mode(-1)
clear
flag=1
clc

printf("Example 6    :               Show the method of file counting using the wc command \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the file which you want to access  \n\n")
nam=input('$ cat   ','s')
printf("# This searches for a file named %s to display\n\n",nam)


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
    c=1
    w=0
    l=0
    clc
    printf("\n $ cat %s    \n",nam)
    fhdr=mopen(nam,'rt')
    while %t
        [n,a]=mfscanf(fhdr,"%c")
        if meof(fhdr) then
            break
        end
        
            printf("%c",a)
            c=c+1
         if ascii(a)==32 then
            w=w+1
        end
        if ascii(a)==10 then
            w=w+1
            l=l+1
        end
    end
    mclose(fhdr)
    halt('')
      printf('\n\n$ wc %s                      #to get the count in file named %s \n',nam,nam)
   halt('') 
   printf('\t%d\t%d\t%d   %s\n',l,w,c,nam)
    printf("\n# This means there are %d words,%d characters\n \t and %d lines in the file %s \n",w,c,l,nam)
     printf('\n\n$ wc -l  %s                      #to get the line count in file named %s \n',nam,nam)
   halt('') 
   printf('\t%d  %s\n',l,nam)
    printf("\n# Number of lines \n")
     printf('\n\n$ wc -w  %s                      #to get the word count in file named %s \n',nam,nam)
   halt('') 
   printf('\t%d  %s\n',w,nam)
    printf("\n# Number of words \n")
     printf('\n\n$ wc -c  %s                      #to get the character count in file named %s \n',nam,nam)
   halt('') 
   printf('\t%d  %s\n',c,nam)
    printf("\n# Number of characters \n")
end


printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
