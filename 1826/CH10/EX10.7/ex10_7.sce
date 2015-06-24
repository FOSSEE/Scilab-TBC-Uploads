// Example 10.7, page no-271
clear
clc
n=5*10^28//m^-3
ni=1.45*10^13//m^-3
mue=1.35//m^2/V-s
muh=0.45
e=1.6*10^-19//C
p=4.5*10^23//m^-3
sig=ni*e*(mue+muh)
rho=1/sig
//rho=rho*10^12
r=rho*10^12
nd=n/10^9
p=(ni^2)/nd
sig2=nd*e*mue
 
printf("\nThe intrinsic conductivity is %.2f *10^-6 /ohm-cm\n\nThe intrinsic resistivity is %.2f *10^-5Ohm-m\n\nResistance = %.2f*10^7 Ohm\n\nDonar concentration is %.0f*10^19\n\nConcentration of hole is %.1f*10^6 m^-3\n\nConductivity = %.1f per ohm-m",sig*10^6,rho*10^-5,r*10^-17,nd*10^-19,p*10^-6,sig2)
