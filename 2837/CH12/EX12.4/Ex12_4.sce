clc
clear
//Initialization of variables
ea=0.8
eb=0.7
Fa=0.045
l=4 //m
b=4 //m
Fe=1
Ta=540+460 //R
Tb=1540+460 //R
//calculations
A=l*b
ef=ea*eb
Q=0.173*A*Fa*Fe*ef*((Tb/100)^4 -(Ta/100)^4)
//results
printf("Net energy exchange = %d Btu/hr",Q)
disp('The answers are a bit different due to rounding off error in textbook')
