
clc;
clear;
//Example 2.41
//Given
rho=9000    //kg/cubic meter
Cp=0.38    //kJ/(kg.K)
Cp=Cp*1000    //J/kg.K
k=370    //W/(m.K)
T0=483    //K
T_inf=373    //K
delta_T=40    //K
T=T0-delta_T    //K
t=5    //time in [minutes]
t=t*60    //[seconds]
//A=2A.....Two faces
//V=A.2x
//2x=thickness of slab=30    mm=0.03    m
x=0.015    //[m]
th=2*x    //thickness of slab
h=-rho*Cp*x*log((T-T_inf)/(T0-T_inf))/t
printf("Heat transfer coefficient is: %f W/(sq m.K)",h)
