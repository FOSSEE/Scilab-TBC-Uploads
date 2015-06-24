clc;
clear all;
d = 6e-6; // Diameter of fiber in meters
lambda = 1.5e-6; // Wavelength of laser source in meters
n1 = 1.47; // Refractive index of core
n2 = 1.43; // Refractice index of clad
NA = sqrt(n1^2-n2^2); // Numerical Aperture
N = 4.9*((d*NA)/lambda)^2 // Number of modes propogating through fiber is
disp('',N,'Number of modes propogating through fiber is')
// Slight variation in the answer as compared to book... Checked in calculator... Book's mistake
