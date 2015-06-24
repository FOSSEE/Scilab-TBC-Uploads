clc;
clear all;
ue = 1.486; // Refractive index of extraordinary ray
uo = 1.658; // Refractive index of the ordinary ray
lambda = 6e-7; // Wavelength of light in meters
t = lambda/(4*(uo-ue));
disp('m',t,'The thickness of the quarter wave plate is') 
//rounding off value due to scilab
