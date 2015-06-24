
clc;
clear;
//Example 2.37
//Calculate the time required for a ball to attain a temperature of 423 K
//Given
k_steel=35    //W/m.K
Cp_steel=0.46    //kJ/(kg*K)
Cp_steel=Cp_steel*1000    //J/(kg*K)
h=10    //W/sq m.K
rho_steel=7800    //kg/cubic m
dia=50    //mm
dia=dia/1000    //m
R=dia/2      //radius in m
A=4*%pi*R^2  //Area  in sq m
V=A*R/3      //Volume in cubic meter
Nbi=h*(V/A)/k_steel
//As Nbi<0.10,internal temp gradient is negligible
T=423    //K
T0=723    //K
T_inf=373    //K
//(T-T_inf)/(T0-T_inf)=e^(-h*At/rho*Cp*V)
t=-rho_steel*Cp_steel*R*log((T-T_inf)/(T0-T_inf))/(3*h);    //s
printf("Time required for a ball to attain a temperature of 423 K is %f s= %f h",t,t/(3600))

