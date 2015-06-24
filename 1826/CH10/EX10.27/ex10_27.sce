// Example 10.27, page no-286
clear
clc
sig=6.22*10^7//per Ohm-m
n=5.9*10^28
e=1.6*10^-19
mu=sig/(n*e)
printf("The mobility of electrons in silver is %.2f*10^-3 m^2/V-s",mu*10^3)
