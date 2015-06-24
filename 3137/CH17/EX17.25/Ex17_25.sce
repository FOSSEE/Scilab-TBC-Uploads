//Initilization of variables
Mm=70 //kg
Mc=45 //kg
R=0.6 //m
g=9.8 //m/s^2
l=5 //m
theta=50 //degrees
//Calculations
//T2 calculations except for v term in it as it cannot be declared as a number
T2=68.7 //without the v term in it
v=sqrt((g*Mm*l-g*Mc*l*sind(theta))/T2) //m/s
//Result
clc
printf('The speed is %fm/s',v)
