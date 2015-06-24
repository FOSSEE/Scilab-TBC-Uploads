//clear//
//Caption:Phased-Array-Based-Devices:Channel spacing interms of wavelength and path-length difference
//Example10.10
//page 372
clear;
clc;
close;
Lambda_c = 1550e-09; //central design wavelength
nc = 1.45; //refractive index of grating array waveguide
ns = 1.45; //refractive index of teh star coupler
ng = 1.47; //group index of grating array waveguide
x = 5e-06 ; //center-to-center spacing between the input waveguides
d = 5e-06 ; //center-to-center spacing between the output waveguides
m =1;
Lf = 10e-03;//distance between transmitter and object
delta_L = m*Lambda_c/nc;
delta_Lambda = (x/Lf)*(ns*d/m)*(nc/ng);
disp(delta_L*1e06,'Waveguide length difference in um =')
disp(delta_Lambda*1e09,'Channel spacing interms of wavelength in nm=')
//Result
//Waveguide length difference in um =  1.0689655  
// Channel spacing interms of wavelength in nm =  3.5756803 
