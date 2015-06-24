clc
disp("Example 3.6")
printf("\n")
printf("Given")

disp("values of two inductors are 3mH and 6 mH")
L1=3*10^-3;L2=6*10^-3;
disp("If inductors are parallel")
Leq=((L1*L2)/(L1+L2))*10^3
printf("Value of equivalent inductance is %3.1fmH\n",Leq)

