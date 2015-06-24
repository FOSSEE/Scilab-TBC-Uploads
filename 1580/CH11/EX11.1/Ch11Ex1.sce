// Scilab Code Ex11.1:  Page-11.5(2004)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light in free space, m/s
k = 8.61e-5;    // Boltzmann constant, J/K
T = 300;    // Temperature at absolute scale, K
lambda = 6943e-10;    // Wavelength of visible light, m
E = h*c/(lambda*1.6e-19); //  Energy in eV
rate_ratio = exp(-E/(k*T));    // Ratio of spontaneous emission to stimulated emission

printf("\nThe ratio of relative population = %3.2e", rate_ratio);
printf("\nEnergy = %3.2f eV", E);

// Results
//  The ratio of relative population = 8.20e-31
// Energy = 1.79 eV 
