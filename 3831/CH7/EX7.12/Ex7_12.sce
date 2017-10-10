// Example 7_12
clc;funcprot(0);
// Given data
T=600;// K
I=0.10;// amp
L=10.0*10^-3;// m
b=5.00*10^-3;// m
w=1.00*10^-3;// m
rho_e=0.10;// ohm.m

// Calculation
A=b*w;// m^2
R_e=rho_e*(L/A);// W/A^2
S_pW=(I^2*R_e)/T;// W/K
printf('\nThe entropy production rate of the chip,(S_p)_W=%0.4f W/K',S_pW);
