// Example 7.4, page no-162
clear
clc

r=1.85*10^-10//m
t=3.4*10^-14//s
m=9.11*10^-31//Kg
e=1.6*10^-19//C
n=5.8*10^28//per m^3
rho=m/(n*t*e^2)
printf("\nThe electric resistivity of material is %.3f*10^-8 Ohm-m",rho*10^8)
mu=e*t/m
printf("\nThe mobility of the electron in a metal is %.2f*10^-3 m^2/v-s",mu*10^3)
