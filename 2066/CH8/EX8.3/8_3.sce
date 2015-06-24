clc
clear
//Initialization of variables
k=1.4
g=32.2 //ft/s^2
R=53.3 //ft-lb/lb R
T=389.9 //R
Nm=2
//calculations
c=sqrt(k*g*R*T)
V=Nm*c*3600/5280
//results
printf("Speed of test plane = %d mph",V)
