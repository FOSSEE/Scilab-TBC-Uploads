// Example 3.2, page no-89
clear
clc
v=10000//V
i=2*10^-3 //A
e=1.6*10^-19//C
t=1
m=9.1*10^-31//kg
//(i)
n=i*t/e
printf("The no of electrons striking the target per second =%.2f *10^16",n*10^-16)
//(ii)
v1=sqrt(2*e*v/m)
//(iii)
lam=12400/v
printf("\n(ii)\nThe velocity of electron =%.2f*10^7 m/s\n(iii)\nWavelength of x-rays=%.2f A°",v1*10^-7,lam)
