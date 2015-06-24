clc;
clear all;
m0=9.1e-31;//mass of electron
h=6.626e-34;//plank constant
k=1.38e-23;//boltzman constant
Eg=0.7;//bandgap energy in eV
e=1.6e-19;//charge of electron
T=300;//temperature in K
ni=2*((2*%pi*m0*k*T/(h^2))^1.5)*exp((-Eg*e)/(2*k*T))
disp('m^-3',ni,'intrinsic concentration is:')
// slight variation in answer as compared to textbook... checked in calculator
