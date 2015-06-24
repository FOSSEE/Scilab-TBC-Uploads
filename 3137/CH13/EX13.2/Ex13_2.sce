//Initilization of variables
m=5 //kg
s=12 //m
v=4 //m/s
vo=0 //m/s
g=9.8 //m/s^2
mu=0.25
//Calculations
//Using the kinematic equations of motion
a=(v^2-vo^2)/(2*s) //m/s^2
//Using Newtons Principle
N1=g*m //N
P=m*a+mu*N1 //N
//Result
clc
printf('The value of P is %fN',P)
