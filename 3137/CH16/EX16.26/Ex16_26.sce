//Initilization of variables
AB=2 //m
m=2 //kg
F=20 //N
g=9.8 //m/s^2
//Calculations
//Using equation of motion
a=F/m //m/s^2
//Solving by matrix method for Na and Nb
A=[1,-1;4/5,4/5]
B=[m*g;F*(3/5)]
C=inv(A)*B
//Result
clc
printf('The value of a is %f m/s^2 and the reactions are\n Na=%f N and Nb=%f N',a,C(1),C(2))

