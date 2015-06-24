clc;
clear all;
lambda1 = 5890e-10; // Wavelength of D2 line in meters
lambda2 = 5896e-10; // Wavelength of D1 line in meters
delta = lambda2-lambda1;
d = (lambda1*lambda2)/(2*delta);
disp('m',d,'The two spectral lines of the sodium lines are resolved when d is')
