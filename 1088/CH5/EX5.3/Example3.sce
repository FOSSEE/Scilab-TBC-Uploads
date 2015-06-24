clear
flag=1
mode(-1)
clc


printf("Example 3    :               Show the method of removing files in unix using the rm command \n")
disp("****************************************************************")
disp("Answer    :   ")
disp("INSTRUCTIONS   : ")
printf("\nHere all instructions are preloaded in the form of a demo\nPRESS ENTER AFTER EACH COMMAND to see its RESULT\nPRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")
src=input("# Enter the name of the file which you want to delete  : ",'s')

flag=0
printf("\n $ rm %s   \t#deletes file %s\n",src,src)
halt('')


if isfile(src) then
      printf('rm  : remove %s (yes/no)?  ? ',src)
      resp=input(' ','s')
      if resp=='y' then
        mdelete(src)
        flag=1
      end
  else
    printf("\n%s  : file not found \n",src)  
end

if flag then
    printf("\n $ cat %s             # opening file %s to see if it exists \n",src,src)
    if ~isfile(src) then
        printf("\n%s : file not found \n ",src)
    else
        
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

    end
end


printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)
