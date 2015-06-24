// Example 7.10, page no-166
clear
clc
rho=1.6*10^-8 //Ohm-m
e=1.6*10^-19//C
fe=5.5*e//J
avg=6.023*10^23
d=1.05*10^4//density
wt=107.9*10^-3//atomic weight
m=9.1*10^-31//kg
c=3*10^8//m/s
sig=1/rho
n=avg*d/wt
t=sig*m/(n*e^2)
printf("\nThe conductivity of silver piece is %.2f*10^7 per Ohm-m\n\nThe relaxation time is %.2f*10^-14 s",sig*10^-7,t*10^14)
lam=c*t
vd=sig*100/(n*e)
printf("\n\nThe driftt velocityy of electrons in the silver piece is %.2f m/s",vd)

