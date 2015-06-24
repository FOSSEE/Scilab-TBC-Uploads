// Example 7.5, page no-163
clear
clc

rho=1.54*10^-8//ohm-m
E=100//V/m
n=5.8*10^28//m^-3
e=1.6*10^-19//C
mu=1/(rho*n*e)
vd=mu*E
printf("\nMobility of electron in silvetr is %.4f*10^-3 m^2/v-s\n\nThe drift velocity of the electron in silver is %.5f m/s ",mu*10^3,vd)
