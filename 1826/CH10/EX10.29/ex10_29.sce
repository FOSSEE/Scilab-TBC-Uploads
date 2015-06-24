// Example 10.29, page no-287
clear
clc

avg=6.023*10^23
m=9.1*10^-31//kg
e=1.6*10^-19//C
d=8.92*10^3 //kg/m^3
rho=1.73*10^-8//Ohm-m
z=63.5

n=avg*d/z
sig=1/rho
tau=sig*m/(n*(e^2))
mu=sig/(e*n)
printf("\nThe relaxation time is %.2f *10^-11 s\nThe mobility of electrons in copper is %.2f m^2/V-s\nThe conductivity of coppper is %.2f * 10^7 per Ohm-m\n",tau*10^11,mu,sig*10^-7)
