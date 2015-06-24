clc
//initialization of variables
T1=400+460 //R
A=40 //in^2
e=0.1
T2=70+460 //R
//calculations
Q=A*e*0.173*10^-8 *(T1^4 - T2^4)/144
//results
printf("Rate of heat transfer = %.1f B/hr",Q)
//The answer given in textbook is wrong. Please use a calculator to check it
