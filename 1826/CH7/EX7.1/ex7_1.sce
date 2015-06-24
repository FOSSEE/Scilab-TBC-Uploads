// Example 7.1, page no-160
clear
clc
rho=1.73*10^-8 //Ohm-m
z=63.5
d=8.92*10^3 //kg/m^3
avg=6.023*10^26
e=1.6*10^-19//C
m=9.11*10^-31//Kg

n=avg*d/z
sig=1/rho
tau=sig*m/(n*e^2)
mu=sig/(n*e)

printf("Mobility of electrons in copper is %.2f *10^-3 m^2/V-s",mu*10^3)
