// Example 2.21 page no-75
clear
clc

A=9.64*10^21
T=320
e=1.6*10^-19
Eg=0.75
k=1.37*10^-23
ni=A*T^(3/2)*%e^(-(e*Eg)/(2*k*T))
printf("\nni=%.2f *10^19 electrons(holes)/m^3",ni/10^19)
mup=0.36
mun=0.17
sig=e*ni*(mup+mun)
printf("\nConductivity, Sigma=%.3f Mho/m",sig)
