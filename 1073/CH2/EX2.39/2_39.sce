
clc;
clear;
//Example 2.39
//Given
h=11.36    //W/sq m.K
k=43.3    //w/(m.K)
r=25.4    //radius in mm
r=r/1000    // radius in m
A=4*%pi*r^2    //Area of sphere [sq m]
V=A*r/3    //Volume in [cubic m]
rho=7849    //kg/cubic m
Cp=0.4606*10^3    //J/kg.K
t=1    //hour
t=t*3600    //seconds
T_inf=394.3    //[K]
T0=700    //[K]
// (T-T_inf)/(T0-T_inf)=e^(-3*h*t/rho*Cp*V)
T=T_inf+(T0-T_inf)*(%e^((-h*A*t)/(rho*Cp*V)));
printf("Temperature of ball after 1 h= %f K (%f degree C)",T,T-273)
