// Example 2.14 page no-71
clear
clc

n=4.4*10^22 ///cm^3
mu=3600//cm62/volt-sec
e=1.6*10^-19//C
sigma=n*mu*e*10^-6
printf("\nResistivity, rho=%.3f Ohm-cm",1/sigma)
