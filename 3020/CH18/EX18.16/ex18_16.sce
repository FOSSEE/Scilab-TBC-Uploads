clc;
clear all;
T=300;//temperature in kelvin
k=1.38e-23;//boltzman constant
h=6.626e-34;//planks constant
e = 1.6e-19; // Charge of an electron
Eg=1.1;
mo =9.1e-31; // mass of electron
me=0.31; // Effective mass of electron
r = ((2*%pi*k*T*me*mo)/(h^2))^1.5;// Temporary variable
s = exp((-Eg*e)/(2*k*T));// Temporary variable
ni=2*r*s
disp('m^-3',ni,'the intrinsic concentration is:')
