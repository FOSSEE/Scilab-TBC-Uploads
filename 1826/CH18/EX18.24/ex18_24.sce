// Example 18.24, page no-475
clear
clc
A=650*10^-6 //mm^2
d=4 *10^-3//mm
epsr=3.5
eps=8.854*10^-12
q=2*10^-10//C
v=q*d/(eps*epsr*A)
printf("The voltage across capacitor is %.2f V",v)
