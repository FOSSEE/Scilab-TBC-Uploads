//Program for example 6 chapter 3
clear
t='n'
clc

 disp("Example 7:              Record the current session in a file and open the same")
 disp("*****************************************************************")
 disp("Answer     :    ")
 disp("Continue...???  ")
 halt("")
 
 printf("Enter the sequence of instructions to be recorded the session\nEnter yes to end the session and view result\n")
 halt('Press Enter to continue')
mclose("Sessiont.txt")
 diary("Sessiont.txt","new")
 while t~='yes'
     //clc()
     xt=input("","string")
     if(xt=='yes') then
         t=xt
         clc(1)
     end
     
     clc(1)
if(execstr(xt,'errcatch')==0) then
     v=evstr(xt)
     clc(1)
     disp(v(1))
 elseif(xt~=t) then
         disp("Wrong Command or Variable")
      else
        disp("") 
 end
 halt("")
end
diary("Sessiont.txt","close")

disp("Check for the file Sessiont.txt in the current directory...")
halt("")
disp("*****************************************************************")
