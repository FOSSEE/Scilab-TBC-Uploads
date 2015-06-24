
clc;
clear;
//Example 2.46    
dia=3    //[mm]
dia=dia/1000    //[m]
r=dia/2    //radius in[m]
k=150    //W/(m.K)
h=300    //W/(sq m.K)
T0=413    //[K]
T_inf=288    //[K]
A=%pi*(r^2)    //Area in [sq m]
P=%pi*dia      //[W/sq m.K]
Q=(T0-T_inf)*sqrt(h*P*k*A)   //Heat dissipated in [W]
printf("Heat dissipated by the rod is %f W",Q)
