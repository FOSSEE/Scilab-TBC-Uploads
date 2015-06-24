// Example 18.20, page no-472
clear
clc
A=3*10^-3//m^2
d=1*10^-3 //m
epsr=3.5
Q=20*10^-9//C
eps=8.854*10^-12 //F.m^-1
c=eps*epsr*A/d
E=Q/(c*d)
printf("The capacitance of capacitor is %.2f pF\nThe electric field strength is %.2f*10^3 V/m",c*10^12,E*10^-3)
