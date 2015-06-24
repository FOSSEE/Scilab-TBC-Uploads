//Program for example 6 chapter 3
clear
t='y'
clc

 disp("Example 6:           Simulate a calculator to evaluate mathematical expressions")
 disp("*****************************************************************")
 disp("Answer     :    ")
 disp("Continue...???  ")
 printf("Enter the expressions to be evaluated one by one\n")
 halt("")
 //clc()
 printf("Calculator simulation using bc command in Unix\n\n")
 while t=='y'
     xt=input("Expression :: ","string")
     if xt=="^c" then
         break
     end
     printf("\n%d \n\n",evstr(xt))
 end
 //clc()
 printf("______                                                              \n")
 printf("      |      |      |     /\\    |\\    | |   /       |     |\n")
 sleep(300)
 printf("      |      |----|    /--\\   | \\   | |<          |     |\n")
 sleep(300)
 printf("      |      |      |  /      \\ |    \\| |  \\        [___]\n")  
 sleep(300)
 disp("Thank You") 
 disp("*****************************************************************")
