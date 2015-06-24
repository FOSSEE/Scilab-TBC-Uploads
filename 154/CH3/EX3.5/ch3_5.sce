clc
disp("Example 3.5")
printf("\n")
printf("Given")
disp("a)")
disp("values of two resistors are 60 ohm and 60 ohm")
R1=60;R2=60;
disp("If resistors are parallel")
Req=(R1*R2)/(R1+R2)
printf("Value of equivalent resistance is %dohm\n",Req)

disp("b)")
disp("values of three equal resistors are 60 ohm")
R1=60;R2=60;R3=60;
disp("If resistors are parallel")
x=1/R1+1/R2+1/R3
Req=1/x;
printf("Value of equivalent resistance is %dohm\n",Req)
