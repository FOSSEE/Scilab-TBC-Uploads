// Example 10.31, page no-288
clear
clc
rho=1.43*10^-8//Ohm-m
ni=6.5*10^28//per m^3
e=1.6*10^-19//C
m=9.1*10^-31//Kg
tau=m/(rho*ni*e^2)
printf("The relaxation time for electrons in the metal is %.2f *10^-14 s",tau*10^14)
