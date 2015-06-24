// Example 18.25, page no-476
clear
clc
A=5*10^-4 //m^2
d=1.5*10^-3//m
epsr=6
v=100
eps=8.854*10^-12
q=eps*epsr*A*v/d
printf("The charge on the capacitor is %.2f *10^-9 C",q*10^9)
