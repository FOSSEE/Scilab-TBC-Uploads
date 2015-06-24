
clc;
clear;
//Example 2.28
//Calculate heat loss per sq m and temperature of outside surface
//Given
A=1 //assume [sq m]
x1=0.006    //[m]
x2=0.075    //[m]
x3=0.2    //[m]
k1=39    //[W/m.K]
k2=1.1    //[W/m.K]
k3=0.66    //[W/m.K]
h0=65    //W/sq m .K
T1=900    //K
T2=300    //K
sigma_R=(x1/(k1*A)+x2/(k2*A)+x3/(k3*A)+1/(h0*A));
//To calculate heat loss/sq m area
Q=(T1-T2)/sigma_R    //[W/sq m]
printf("Heat loss per sq metre area is: %f W/sq m",Q);
//Q/A=T-T2/(1/h0), where T=Temp of outside surface
//So, T=T2+Q/(A*h0)
T=Q/(A*h0)+T2    //[K]
printf("Temperature of utside surface of furnace is: %f K (%f degree C)",T,T-273)
