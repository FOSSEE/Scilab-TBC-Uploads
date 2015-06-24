// Example 10.22, page no-283
clear
clc
Rh=3.66*10^-11//m^2//A-s
sig=112*10^7//ohm-m
e=1.6*10^-19 //C
n=3*%pi/(8*Rh*e)
mu=sig/(n*e)
printf("\nThe concentration of electrons is %.0f*10^29 m^-3\nthe electron mobility at room temperature = %.3f m^2/V-s",n*10^-29,mu)
