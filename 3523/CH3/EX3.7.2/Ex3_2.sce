// Example 2// Ch 3
clc;
clear;
close;
// given data
R=8314; // gas constant in J/kg.mol.K
T=298;//in kelvin 
M=32; // oxygen is diatomic
m=2*10^-3; // in kg
p=1.01*10^5; // 1 atm=1.01*10^5 N/m2
G = (m*R*T)/(M*p);//volume of gas

x=(3/2)*p;//no. of molecules per unit volume where x=N*0.5*m*v^2 is given as (3/2)*p)
printf("volume of gas %e m^3 \n",G)
KE = x*G;//total translational kinetic energy
printf("total translational kinetic energy is %f J \n",KE) 
// Note: Value of G is calculated in book is wrong
