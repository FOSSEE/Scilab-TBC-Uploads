// Example 7.3, page no-161
clear
clc

r=1.85*10^-10//m
t=3.1*10^14//s
m=9.11*10^-31//Kg
e=1.6*10^-19//C
n=25.33*10^27
rho=m/(n*t*e^2)
printf("The electric Resistivity of sodium at 0°C is %.3f*10^-36 Ohm-m",rho*10^36)
