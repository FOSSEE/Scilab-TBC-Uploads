//Initilization of variables
d=1.2 //m
w0=0 //rpm
w=2000 //rpm
t=20 //s
//Calculations
alpha=(w-w0)/t 
alpha_rad=(alpha*2*%pi)/60 //converting to radians/s^2
//Result
clc
printf('The angular acceleration is %frad/s^2',alpha_rad)
