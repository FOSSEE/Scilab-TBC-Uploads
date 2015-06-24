//Initilization of variables
W1=4 //lb
W2=2 //lb
t2=0.04 //s
W3=-2 //lb
t3=0.02 //s
t=3 //s
g=32.2 //ft/s^2
//Calculations
//Algebraic sum of two areas
A=t2*W2+t3*W3 //lb-s
//Using Impulse Momentum Theorem
v=(A*g)/W1 //ft/s
//Result
clc
printf('The spped after 3s is %f ft/s',v)
