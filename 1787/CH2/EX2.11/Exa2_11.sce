//Exa 2.11
clc;
clear;
close;
//given data
ni=2.5*10^13;//in cm^-3
e=1.6*10^-19;//in coulamb
MUh=1800;//in cm^2/V-s
MUe=3800;//in cm^2/V-s
SIGMAi=ni*e*(MUe+MUh);//in (ohm-cm)^-1
GeAtoms=4.41*10^22;//in cm^-1
DonorImpurity=1/10^7;//in per Ge Atom
Nd=4.41*10^22*DonorImpurity;//in cm^-1
n=Nd;//in cm^-1
p=ni^2/Nd;//in cm^-3
SIGMAn=e*Nd*MUe;//in (ohm-cm)^-1
disp(SIGMAi,"Conductivity of Ge(intrinsic) in (ohm-cm)^-1 ");
disp(SIGMAn,"Conductivity of resulting N-type Ge semiconductor in (ohm-cm)^-1 : ");