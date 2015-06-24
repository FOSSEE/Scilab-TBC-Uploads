clc;
clear all;
d = 60e-6; // Diameter of core in fiber in meters
lambda = 2.7e-6; // Operating Wavelength in meters
NA = 0.25; // Numerical Aperture
N = 4.9*((d*NA)/lambda)^2 // Number of modes propogating through fiber is
disp('',N,'Number of modes propogating through fiber is')
