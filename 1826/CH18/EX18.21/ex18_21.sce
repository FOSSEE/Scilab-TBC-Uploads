// Example 18.21, page no-473
clear
clc
A=7.54*10^-4 //m^2
d=2.45*10^-3 //m
epsr=6
v=10 //V
eps=8.854*10^-12//F/m
c=eps*epsr*A/d
printf("\nThe capacitance of the capacitor is %.3f pF",c*10^12)
Q=c*v
E=v/d
p=eps*(epsr-1)*E
D=eps*epsr*E
printf("\nCharge stored on capacitor = %.3f *10^-11 C\nE=%.2f*10^3 V/m\nPolarisation=%.3f*10^-7 Cm^-2\ndielectric displacement = %.3f*10^-7 cm",Q*10^11,E*10^-3,p*10^7,D*10^7)
