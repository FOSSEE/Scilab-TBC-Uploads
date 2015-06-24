clc;
clear all;
c = 3e8; // Velocity of light in air
h = 6.626e-34 ; // Planck's constant
lambda = 0.4e-6 ; // Wavelengh of cadmium sulphate crystal in meters
E = (h*c)/lambda; // Energy of each photon emitted 
a = 4e-6; // Area of photodetector in square meters
I = 200; // Intensity of light in watts/square meters
N = (I*a)/E;// The number of pairs generated per second
disp('',N,'The number of pairs generated per second is')
