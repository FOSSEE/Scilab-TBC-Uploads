// Example 4_10
clc;funcprot(0);
// Given data
T=20;// °C
mu_0=4*%pi*10^-7;// V.s/A
Shi_m=-2.20*10^-5;// The electric susceptibility
H_2=1.00*10^3;// A/m
V=5.00*10^-6;// m^3

// Solution
// (a)
H_1=0;// A/m
W_12=-mu_0*V*(1+Shi_m)*((H_2^2-H_1^2)/2);// J
printf('\n(a)The total magnetic work required,(W_12)magnetic=%1.2e J',W_12);
// (b)
W_12=-mu_0*V*Shi_m*((H_2^2-H_1^2)/2);// J
printf('\n(b)The magnetic work required to change the magnetic field strength,(W)_magnetic=%1.2e J',W_12);
