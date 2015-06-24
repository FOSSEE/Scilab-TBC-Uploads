//Exa 2.13
clc;
clear;
close;
//given data
e=1.6*10^-19;//in coulamb
T=300;//in Kelvin
MUh=1700;//in cm^2/V-s
MUe=3600;//in cm^2/V-s
k=1.38*10^-23;//in J/K
De=MUe*k*T/e;//in cm^2/s
Dh=MUh*k*T/e;//in cm^2/s
disp(De,"Diffusion constant of electron(in cm^2/s) : ");
disp(Dh,"Diffusion constant of hole(in cm^2/s) : ");