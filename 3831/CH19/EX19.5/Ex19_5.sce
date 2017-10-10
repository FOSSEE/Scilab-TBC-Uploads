// Example 19_5
clc;funcprot(0);
// Given data
T_1=30+273.15;// K
T_2=T_1;// K
dp=10.0;// kPa
d=0.0100;// m
rho=996;// kg/m^3
k_p=1.00*10^-12;// m^2
mu=891*10^-6;// kg/(s.m)
dx=0.100;// m
Q=15.0;// The isothermal energy transport rate in this system in J/s

// Solution
// (a)
A=(%pi/4)*d^2;// m^2
m=-((rho*A*k_p)/mu)*((dp*10^3)/dx);// kg/s
// (b)
k_o=-(Q/A)/((-dp*10^3)/dx);// m^2/s
// (c)
S_i=Q/T_1;// J/(s.K)
printf('\n(a)The thermomechanical mass flow rate between the vessels,m=%1.2e kg/s \n(b)The osmotic heat conductivity coefficient,k_o=%1.2f m^2/s \n(c)The isothermal entropy transport rate induced by the thermomechanical mass flow rate,S_i=%0.4f J/(s.K)',m,k_o,S_i);
