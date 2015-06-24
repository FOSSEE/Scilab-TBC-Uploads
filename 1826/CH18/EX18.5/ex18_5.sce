// Example 18.5, page no-462
clear
clc

eps=8.85*10^-12//F m^-1
epsr=6
A=5*10^-4//m^2
d=1.5*10^-3
v=100
Q=eps*epsr*A*v/d
printf("The charge on the capacitor is %.2f * 10^-9 C",Q*10^9)
