clc;
clear all;
c = 3e8; // Velocity of light in air
h = 6.626e-34 ; // Planck's constant
lambda = 4961e-10 ; // Wavelengh of green light from mercury lamp
E = (h*c)/lambda; // Energy of each photon emitted 
N = 1/E ; // Number of photons rquired to do one joule of work
disp('m^-3',N,'The number of photons from green light of mercury is')
