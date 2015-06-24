// Example 7.2, page no-161
clear
clc
r=1.85*10^-10//m
t=3*10^-14//s
m=9.11*10^-31//Kg
e=1.6*10^-19//C
a=r*(4/sqrt(3))
ne=2/a^3
rho=m/(ne*t*e^2)
printf("Resistivity of copper is %.3f*10^-8 Ohm-m",rho*10^8)
