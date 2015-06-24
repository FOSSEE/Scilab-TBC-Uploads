//Initilization of variables
m1=2 //kg
theta=20 //degrees
m2=4 //kg
t=4 //s
g=9.8 //m/s^2
vo=0 //m/s
//Calculations
//Applying Newtons Principle
//Solving by matrix method
A=[1,-2;1,4]
B=[m1*g*sind(theta);m2*g]
C=inv(A)*B 
a=C(2) //m/s^2
v=vo+a*t //m/s
//Result
clc
printf('The velocity of 4kg mass is %fm/s',v)
