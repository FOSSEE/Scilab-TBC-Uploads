clc;
clear all;
T = 523; // Temperature in kelvin
c = 3e8;// Velocity of air
h = 6.626e-34; // Plancks constant
k = 1.38e-23; // Boltzmanns constant
e = 1.602e-19; // Charge of an electron
lambda = 5900e-10; // Wavelength of light in meters
r = exp(((h*c)/(k*T*lambda))); // Temporary variable
t = (1/(r-1)); //t =(Stimulated emission/Spontaneous emission) 
disp('',t,'Ratio between stimulated emission and spontaneous emission')
