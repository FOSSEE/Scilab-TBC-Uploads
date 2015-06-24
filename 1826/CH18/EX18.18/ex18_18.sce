// Example 18.18, page no-471
clear
clc
A=1000*10^-6 //m^2
d=5*10^-3
epsr=4
Q=3*10^-10
eps=8.854*10^-12
c=(eps*epsr*A)/d
v=Q/c
E=v/d
printf("The voltage across capacitor is %.2f V\nThe electric field strength is %.2f V/m",v,E)
