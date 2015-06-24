//Initilization of variables
ds=0.2 //m
ts=0.05 //m
rhos=7850 //kg/m^3 density of  steel
dw=0.002 //m
lw=0.9 //m
G=80*10^9 //Pa
//Calculations
//Torsional Constant
K=(%pi*dw^4*G)/(32*lw) //m/rad
//Mass Calculations
m=(1/4)*%pi*(ds^2)*ts*rhos //kg
//Moment of Inertia
Io=(1/2)*m*(ds/2)^2 //kg.m^2
//Frequency
f=(1/(2*%pi))*(sqrt(K/Io)) //Hz
//Result
clc
printf('The natural frequency of the system is %f Hz',f)
