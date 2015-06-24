// Example 2.6 page no-48
clear
clc

//(a)
V=21.5 //Volts
e=1.6*10^-19 //C
m=9.1*10^-31 //kg
v=sqrt(2*e*V/m)
lambda=12400/V //A°
printf("\n(a)\nVelocity, v=%.2f*10^6 m/sec\nWavelength of Radiation, Lambda=%.1f",v/10^6,ceil(lambda))
//(b)
c=3*10^8 //m/sec
f=c/(lambda*10^-10)
printf("\n(b)\nFrequency of Radiation, f=%.1f*10^15 Hz",f/10^15)
