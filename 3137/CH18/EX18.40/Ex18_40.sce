//Initilization of variables
h1=20 //m
h2=14 //m
g=9.8 //m/s^2
//Calculations
u1=sqrt(2*g*h1) //m/s
u2=0 //m/s
v1=-sqrt(2*g*h2) //m/s
v2=0 //m/s
e=(v2-v1)/(u1-u2) //coefficient of restitution
//Result
clc
printf('The value of coefficient of restitution is %f',e)
