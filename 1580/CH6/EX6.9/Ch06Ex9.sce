// Scilab Code Ex 6.9: Page-6.18 (2004)
clc;clear;
k = 1.38e-23;       //  Boltzmann constant, joule per kelvin
T = 300;    // For simplicity room temperature is taken, kelvin
e = 1.6e-19;    // Charge on electron, C
E = k*T;    //  Given Energy, eV
F_E = 1/(1+exp(E/(k*T)));   //Fermi function , unitless
T = 300;    // For simplicity room temperature is taken, kelvin
printf("\nFermi fucntion = %5.3f ", F_E);

// Results
//  Fermi fucntion = 0.269  

