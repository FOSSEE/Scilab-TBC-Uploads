// Example 4_9
clc;funcprot(0);
// Given data
deltaphi=120;// volts
L=0.0100;// The distance between two plates in m
d=0.100;// The length of the plate on square side in m
epsilon_0=8.85419*10^-12;// The electric permittivity of vacuum in N/V^2

// Solution
E_1=0;//  V/m
A=0.100*0.100;// m^2
V=A*L;// m^3
E_2=deltaphi/L;// V/m
Shi_e=77.5;// The electric susceptibility
W_12=-(epsilon_0*Shi_e*V*(E_2^2-E_1^2))/2;// The polarization work required in the charging of the capacitor in J
printf('\nThe polarization work required in the charging of the capacitor,W_12=%1.2e N.m',W_12);
