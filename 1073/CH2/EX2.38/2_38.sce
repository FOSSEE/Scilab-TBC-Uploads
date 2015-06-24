
clc;
clear;
//Example 2.38
//Given
dia=50    //mm
dia=dia/1000    //m
r=dia/2    //radius in m
h=115    //W/sq m.K
rho=8000 //kg/cubic m
Cp=0.42    //kJ/kg.K
Cp=Cp*1000    //J/(kg*K)
A=4*%pi*r^2    //Area in sq m
V=A*r/3    //Volume in cubic m
T=423    //K
T_inf=363    //K
T0=723    //K
//(T-T_inf)/(T0-T_inf)=e^(-3ht/(rho*Cp*r))
t=-rho*Cp*r*log((T-T_inf)/(T0-T_inf))/(3*h);    //Time in seconds
printf("Time taken by centre of ball to reach a temperature of 423 K is %f s (=%f minutes",t,t/60);
