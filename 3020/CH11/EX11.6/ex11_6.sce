clc;
clear all;
lambda = 6328e-10; // Wavelength of the laser beam
p = 2.3e-3; // Energy emitted by the laser in Joule/second
p1 = 2.3e-3*60; // Energy emitted by the laser in Joule/minute
c = 3e8; // Velocity of light in air
h = 6.626e-34 ; // Planck's constant
v = c/lambda; // Frequency of photon emitted by laser beam
E = h*v; // Energy of a photon
N = p1/E; // The number of photons emitted
disp('photons/minute',N,'The number of photons emitted')
