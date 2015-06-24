// Example 2.22 page no-75
clear
clc

e=1.6*10^-19//C
ni=2.5*10^19
mun=0.36 //m^2/V-sec
mup=0.17 //m^2/V-sec
sig=e*ni*(mup+mun)

rho=1/sig
printf("Resistivity, rho=%.2f Ohm-m",rho)
