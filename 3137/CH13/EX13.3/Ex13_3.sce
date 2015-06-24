//Initilization of variables
m=2 //kg
vo=0 //m/s
v=3 //m/s
s=0.8 //m
theta=20 //degrees
g=9.8 //m/s^2
//Calculations
N=m*g*cosd(theta) //N
a=(vo^2-v^2)/(2*s) //m/s^2
u=-((2*a)+(m*g*sind(theta)))/N  
//Solving for return speed
//Symbol convention is different from textbook
a_ret=((m*g*sind(theta))-(u*N))/2 //m/s^2
vf=sqrt((2*a_ret*s)) //m/s
//Result
clc
printf('The speed is %fm/s',vf)
