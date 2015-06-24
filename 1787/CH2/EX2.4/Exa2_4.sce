//Exa 2.4
clc;
clear;
close;
//given data
ni=2.5*10^13;//in atoms/cm^3
rho=0.039;//in ohm-cm
SIGMAn=1/rho;//in (ohm-cm)^-1
e=1.6*10^-19;//constant
MUe=3600;//in cm^2/V-s
//formula : SIGMAn=n*e*MUe=Nd*e*MUe
Nd=SIGMAn/(e*MUe);//in atoms/cm^3
n=Nd;//in atoms/cm^3
p=ni^2/n;//in atoms/cm^3
disp(n,"Electron density in atoms/cm^3 : ");
disp(p,"Hole density in atoms/cm^3 : ");