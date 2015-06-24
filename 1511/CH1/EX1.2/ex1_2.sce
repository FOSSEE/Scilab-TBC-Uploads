// Example 1.2 page no-9
clear
clc

e=1.6*10^-19//C
m=9.1*10^-31//kg
Vmax=1.5 //v
w=2*%pi*60*10^6//rad/sec
d=8*10^-3 //m
Max_Vel=2*e*Vmax/(m*d*w)
Max_Vel=ceil(Max_Vel*10^-3)
printf("The Maximum value of Velocity is, \n dx/dt=%.2f*10^5 m/sec",Max_Vel/100)
