clear
mode(-1)
flag=1
pwd
xt=ans
clc

printf("Example 4    :               Show the method of renaming files in unix using the mv command \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")

src=input("# Enter the name of the file[or directory] which you want to rename  : ",'s')
if isdir(src) then
destn=input("# Enter the new name of the directory  : ",'s')
else
    destn=input("# Enter the name of the file[or directory] which you want to move into  : ",'s')
end

flag=0
printf("\n $ mv %s %s   \t#copies file[or directory] contents of %s to %s\n",src,destn,src,destn)
halt('')


if isfile(destn)&isfile(src) then
      printf('mv  : overwrite %s (yes/no)?  ',destn)
      resp=input(' ','s')
      if resp=='y' then
        mdelete(destn)
      end
end

if isfile(src)|isdir(src) then
    flag=1
    [status,msg]=movefile(src,destn)
else
    printf("\n%s  : file or directory not found \n",src)
    flag=0
end

if flag==1&isfile(destn) then
    i=1
    printf("\n $ cat %s \t#to display the moved file %s \n\n",destn,destn)
    printf("\n          ===========> %s <============\n\n\n",destn)
    fhdr=mopen(destn,'rt')
    while %t
        [n,a]=mfscanf(fhdr,"%c")
        if meof(fhdr) then
            break
        end
        printf("%c",a)
        i=i+1
    end
    mclose(fhdr)
    printf("\n\n%d characters present in the file.\n[hit ENTER to continue]\n",i)
    halt('')
elseif isdir(destn)&flag==1 then
    cd(destn)
    mode(0)
    ls
    halt("Go back to previous directory  ?? ")
    mode(-1)
    cd(xt)
else
    printf("\n # No changes done in the file \n")
end


printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
