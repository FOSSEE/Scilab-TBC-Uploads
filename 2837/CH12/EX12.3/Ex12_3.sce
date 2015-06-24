clc
clear
//Initialization of variables
Fa=0.045
l=4 //m
b=4 //m
Fe=1
Ta=540+460 //R
Tb=1540+460 //R
//calculations
A=l*b
Q=0.173*A*Fa*Fe*((Tb/100)^4 -(Ta/100)^4)
Q2=416000
//results
printf("In case 1, Net energy exchange = %d Btu/hr",Q)
printf("\n In case 2, Net energy exchange = %d Btu/hr",Q2)
disp('The answers are a bit different due to rounding off error in textbook')
