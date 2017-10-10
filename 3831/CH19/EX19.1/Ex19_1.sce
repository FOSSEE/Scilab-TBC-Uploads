// Example 19_1
clc;funcprot(0);
// Given data
T=20.0+273.16;// K
d=0.0100;// m
alpha_cu=3.50*10^-6;// V/K
rho_e=5.00*10^-9;// ohm m
dphibydx=1.00;// Voltage gradient in V/m

// Solution
A=(%pi/4)*d^2;// m^2
I=(A/rho_e)*dphibydx;// A
Q_P=alpha_cu*T*I;// W
printf('\nThe Peltier heat flow,Q_P=%2.1f W',Q_P);
