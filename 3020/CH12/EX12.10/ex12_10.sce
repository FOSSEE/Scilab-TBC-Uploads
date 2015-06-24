clc;
clear all;
d = 50e-6; // Diameter of core in fiber in meters
lambda = 1e-6; // Operating Wavelength in meters
NA = 0.20; // Numerical Aperture
Nstep = 4.9*((d*NA)/lambda)^2 // Number of modes propogating through step indexfiber is
Ngrad = Nstep/2; // Number of modes propogating through step graded index fiber is
disp('',Ngrad,'Number of modes propogating through graded index fiber is')
