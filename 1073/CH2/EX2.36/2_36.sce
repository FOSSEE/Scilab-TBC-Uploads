
clear;
clc;
//Example 2.36
//Calculate the heat loss per metre of pipe and outer surface temperature
//Given
k=1    //Thermal conductivity in [W/sq m.K]
h=8    //Het transfer coeff in W/sq m.K
rc=k/h  //Critical radius in m
T1=473    //K
T2=293    //K
r1=0.055    //Outer radius =inner radius in [m]
Q_by_L=2*%pi*(T1-T2)/(log(rc/r1)/k+1/(rc*h))
printf("Heat loss per meter of pipe is %f W/m",Q_by_L)
//For outer surface
//Q_by_L=2*%pi*(T-T2)/(1/rc*h)
// implies that, T=T2+Q_by_L/(rc*2*%pi)
T=T2+Q_by_L/(rc*2*%pi*h)    //K
printf("Outer surface temperature is: %f K(%f degree C)",T,T-273)
