clc;
clear all;
e = 1.6e-19; // Charge of an electron
m = 9.1e-31; // Mass of an electron
k = 1.38e-23; //Boltzmann constant
tr = 1e-14; // The relaxation time in seconds
T = 300; // Temperature in kelvin
n = 6e28; //The electron concentration in cubic meters
sigma = (n*e^2*tr)/(m);// Electrical Conductivity
K = (n*%pi^2*k^2*T*tr)/(3*m); //Thermal Conductivity
L = K/(sigma*T); // Lorrentz number
disp('1/(ohm.meter)',sigma,'The electrical conductivity is')
disp('W/(m.k)',K,'The thermal conductivity is')
disp('(W.ohm)/K^2',L,'The lorrentz number is') 
