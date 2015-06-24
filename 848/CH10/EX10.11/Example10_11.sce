//clear//
//Caption:Phased-Array-Based Devices:Length difference between adjacent array waveguides
//Example10.11
//page 373
clear;
close;
clc;
nc = 1.45; //effective refractive index
Lambda_C = 1550.5e-09; //center wavelength
delta_Lambda = 32.2e-09; //free spectral range 
C = 3e08; //free space velocity in m/s
delta_L = Lambda_C^2/(nc*delta_Lambda);
disp(delta_L*1e06,'length difference between adjacent array waveguides in um =')
//Result
//length difference between adjacent array waveguides in um =51.489618  
