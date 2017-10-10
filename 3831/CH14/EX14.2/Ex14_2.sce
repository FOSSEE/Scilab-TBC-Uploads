// Example 14_2
clc;funcprot(0);
// Given data
V=2.50*10^16;// m^3
T=0.00;// °C
t=24.0;// s
rho=917;// kg/m^3

// Solution
m_ice=V*rho*2.2046;// lbm
Q=m_ice/(2*10^3);// tons of refrigeration
printf("\nThe tons of refrigeration produced,Q=%1.2e tons of refrigeration",Q);
