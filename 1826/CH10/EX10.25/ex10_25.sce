// Example 10.25, page no-285
clear
clc
sig=6.22*10^7//per ohm-m
n=5.9*10^28//m^3
e=1.6*10^-19//C
mu=sig/(n*e)
printf("The mobility of electrons in Si is %.2f*10^-3 m^2/V-s",mu*10^3)
