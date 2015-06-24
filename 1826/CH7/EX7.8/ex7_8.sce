// Example 7.8, page no-164
clear
clc

t=1*10^-14//s
T=300//K
m=9.11*10^-31//Kg
e=1.6*10^-19//C
n=6*10^28//per m^3
sig=(n*t*e^2)/m
printf("\nthe electrical conductivity is %.4f * 10^7/ohm-m",sig*10^-7)
k=1.38*10^-23
k1=n*%pi^2*k^2*T*t/(3*m)
printf("\n\nThermal conductivity is %.2f W/m-k",k1)
L=k1/(sig*T)
printf("\n\nthe Lorentz number is %.4f *10^-8 W.Ohm/k^2",L*10^8)
