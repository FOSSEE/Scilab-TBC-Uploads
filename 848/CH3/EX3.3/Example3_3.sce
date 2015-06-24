//clear//
//Caption:Rayleigh scattering loss
//Example3.3
//page97
clear;
close;
clc;
alpha_0 = 1.64; //attenuation at Lambda_0 in dB/KM
Lambda_0 = 850e-09;// wavelength 850 nanometer
Lambda = 1310e-09; //wavelength 1350 nanometer
alpha_Lambda = alpha_0*((Lambda_0/Lambda)^4);
disp(alpha_Lambda,'Rayleigh scattering loss alpha(Lambda) = ')
//Result
//Rayleigh scattering loss alpha(Lambda) = 0.2906929 
