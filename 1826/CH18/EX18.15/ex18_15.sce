// Example 18.15, page no-469
clear
clc
A=6.45*10^-4//m^2
d=2*10^-3//m
epsr=6
v=10//v
eps=8.85*10^-12//F/m
c=eps*epsr*A/d
printf("Capaccitance of Capacitor = %.3f pF",c*10^12)
q=c*v
E=v/d
p=eps*(epsr-1)*E
printf("\ncharge stored on the plate is %.3f *10^-11 C",q*10^11)
printf("\nPolarisation produce in the plate is %.3f *10^-7 Cm^-2",p*10^7)
