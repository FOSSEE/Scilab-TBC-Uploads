//Ex:4.11
clc;
clear;
close;
Tf=1400;// temperature in k
Bc=7*10^-11;// in m^2/N
n=1.38;// 
P=0.29;// Photoelastic coefficient
y=0.9*10^-6;// wavelength in m
K=1.38*10^-23;// boltzman's constant
Rrs=((8*%pi^3)*(n^8)*(P^2)*(Bc*Tf*K))/(3*y^4);
Rrs1=Rrs/10^-3;// per km
e=2.718281828;// Exponential term
Lkm=e^(-Rrs1);// transmission loss facter
At=10*log(1/Lkm)/log(10);// Attenuation in dB/km
printf("The Attenuation=%f dB/km", At);