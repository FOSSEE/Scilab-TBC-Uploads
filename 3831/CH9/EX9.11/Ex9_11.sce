// Example 9_11
clc;funcprot(0);
// Given data 
mu=10.1*10^-3;// The viscosity of the water in kg/(m.s)
L=10.0;// The length of the pipe in m
V_m=0.500;// The maximum velocity of the fluid in m/s
T=20.0;// °C

// Solution
S_pW=(2*%pi*mu*L*V_m^2)/(T+273.15);// The entropy production rate in W/K
printf('\nThe entropy production rate,(S_p)_W=%1.3e W/K',S_pW);
