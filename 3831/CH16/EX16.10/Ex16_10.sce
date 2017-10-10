// Example 16_10
clc;funcprot(0);
// Given data
m=5.00*10^-3;// kg
T=20.0+273.15;// K
p=101.3*10^3;// kg/(m.s^2)
R=286;// m^2/(s^2.K)
D=3.00*10^-3;// m
g=9.81;// m/s^2
g_c=1;// The gravitational constant

// Calculation
W=(m*g)/g_c;// N
rho=p/(R*T);// kg/m^3
V_in=((4*g_c*W)/(rho*%pi*D^2))^(1/2);// m/s
printf("\nThe velocity of the jet,V_in=%2.1f m/s",V_in);
