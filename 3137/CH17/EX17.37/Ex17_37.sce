//Initilization of variables
m=5 //kg
l=2 //m
k=10000 //N/m
x=0.1 //m
g=9.8 //m/s^2
//Calculations
drop=l+x //m mass drop length
//Work Done by Gravity
Wg=g*m*drop //N.m
//Work Done by Spring
Ws=0.5*k*x^2 //N.m
//Increase in KE is without v^2
KE=0.5*m //kg
//Velocity Calculations
v=sqrt((Wg-Ws)/KE) //m/s
//Result
clc
printf('The speed is %f m/s',v)
