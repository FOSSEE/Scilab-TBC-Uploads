//Initilization of variables
L=20 //m
M=1200 //kg
g=9.81 //m/s^2
H=10 //m
//Calculations
AB=sqrt(L^2-H^2) //Applying Pythagoras Theorem
costheta=17.3/20
F1=M*g*H/AB //N
F2=M*g/costheta //N
//Result
clc
printf('Force F1 is %f N and Force F2 is %f N',F1,F2)
//Decimal accuracy causes discrepancy in answers compared to the textbook answers
