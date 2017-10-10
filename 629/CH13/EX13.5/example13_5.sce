clear
clc
//Example 13.5 MASS FLOW RATE OF NATURAL GAS
d0=0.07; //[m]
d1=0.1; //[m]
A0=%pi*d0^2/4 //area[m^2]
A1=%pi*d1^2/4 //area[m^2]
rho=0.678; //density of methane[kg/m^3]
k=1.31;
v=1.59*10^-5; //[m^2/s]
p1=101000; //pressure[Pa]
delp=10000; //difference in pressure[Pa]
p2=p1-delp //[Pa]
ReK=(d0/v)*sqrt(2*delp/rho) //ReK=Re/K
//From fig 13.14,
K=0.7; //flow coefficient
Y=1-((1/k)*(1-p2/p1)*(0.41+0.35*(A0/A1)^2)) //Compressibility factor
m=Y*A0*K*sqrt(2*rho*(p1-p2)) //mass flow rate[kg/s]
printf("\nThe mass flow rate of natural gas = %.3f kg/s.\n",m)