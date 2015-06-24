// Example 19.5, page no-544
clear
clc

B=0.65//Wb/m^2
r=8906//kg/m^3
M=58.7
avg=6.023*10^26
mu=4*%pi*10^-7
k=9.27*10^-24//A.m^2
N=r*avg/M
mu_m=B/(N*mu)
mu_m=mu_m/k

printf("The magnetic moment of nickel atom is %.2f Bohr magneton",mu_m)
