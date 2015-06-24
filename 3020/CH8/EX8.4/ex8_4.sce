clc;
clear all;
ue = 1.486; // Refractive index of extraordinary ray
uo = 1.658; // Refractive index of the ordinary ray
t = 1.64e-6; // Thickness
lambda = t*2*(uo-ue);
disp('m',lambda,'The wavelength of light is')
//rounding off due to scilab
