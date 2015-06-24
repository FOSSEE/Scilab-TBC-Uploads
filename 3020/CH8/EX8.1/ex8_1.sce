clc;
clear all;
ue = 1.553; // Refractive index of extraordinary ray
uo = 1.544; // Refractive index of the ordinary ray
lambda = 6e-7; // Wavelength of light in meters
t = lambda/(4*(ue-uo));
disp('m',t,'The thickness of the quarter wave plate is') 
