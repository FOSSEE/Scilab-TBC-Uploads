clc;
clear all;
n0 = 1.76; // Refractive index of the ruby rod
v0 = 4.3e14; //  Frequency in Hz
deltav0 = 1.5e11; // The doppler broadening in Hz
tsp = 4.3e-3; // Lifetime of the spontanous emission in seconds
tphoton = 6e-9; // Lifetime of photon in seconds
c = 3e8; // Velocity of air
d = ((4*%pi^2*v0^2*n0^3*tsp*deltav0)/(c^3*tphoton)); //d = N2-N1 Difference between the excited and the ground state populations
disp('m^-3',d,'The Difference between the excited and the ground state populations is')
