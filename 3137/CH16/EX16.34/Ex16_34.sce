//Initilization of variables
Vo=1.5 //m/s
V=0 //m/s
g=9.8 //m/s^2
//Calculations
a=(g*0.2)/0.75 //m/s^2
t=-(V-Vo)/a //s
//Result
clc
printf('The maximum accelerayion is %f m/s^2 and minimum time is %f s',a,t)
