//clear//
//Caption:Program to determine the required range of glass thickness for Fabry-perot interferometer
//Example13.4
//page450
clear;
clc;
Lambda0 = 600e-09; //wavelength of red part of visible spectrum 600nm
n = 1.45;//refractive index of glass plate
delta_Lambda = 50e-09; //optical spectrum of full width = 50nm
l = Lambda0^2/(2*n*delta_Lambda);
disp(l*1e06,'required range of glass thickness in micro meter l=')
//Result
//required range of glass thickness in micro meter l = 2.4827586
