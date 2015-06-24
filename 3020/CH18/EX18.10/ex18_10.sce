clc;
clear all;
uh = 0.013; // Hole mobility in square meters per volt per second
ue = 0.48; // Electron mobility in square meters per volt per second
m0=9.1e-31;//mass of electron
h=6.626e-34;//plank constant
k=1.38e-23;//boltzmann's constant
Eg=1.1;//bandgap energy in eV
e=1.6e-19;//charge of electron
T=300;//temperature in K
ni=2*((2*%pi*m0*k*T/(h^2))^1.5)*exp((-Eg*e)/(2*k*T))
disp('m^-3',ni,'intrinsic concentration is:')
rhoi = ni*e*(ue+uh);//Electrical conductivity of silicon 
disp('ohm^-1.m^-1',rhoi,'Electrical conductivity of silicon is')
