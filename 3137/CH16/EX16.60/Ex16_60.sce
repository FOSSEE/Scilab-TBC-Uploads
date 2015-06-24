//Initilization of variables
g=9.8 //m/s^2
r1=0.3 //m
m1=20 //kg
m2=100 //kg
r2=0.75 //m
//Calculations
alpha=(m1*g*r1+m2*g*r2)/(m1*r1^2+(m1/12)*0.6^2+m2*r2^2+(2/5)*m2*0.15^2) //rad/s^2
//Result
clc
printf('The angular acceleration is %f rad/s^2',alpha)
