// Example 10.24, page no-284
clear
clc
rho=1.54*10^-8//Ohm-m
ni=5.8*10^28//per m^3
m=9.1*10^-31//kg
e=1.6*10^-19//C
tau=m/(rho*ni*(e^2))
printf("The relaxation time of electrons in metal is %.2f*10^-14 s",tau*10^14)
