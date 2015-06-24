//Initilization of variables
m=2000 //kg
k=1.200 //m
w=120 //rpm
t=200 //s
//Calculations
//Applying Angular Momentum theorem
M=((m*k^2*(w*2*%pi))/60)/t //N.m
//Result
clc
printf('The Momentum necessary is %f N.m',M)

