// Scilab Code Ex6.9: Page-199 (2006)
clc; clear;
h = 6.626e-34;  // Planck's constant, Js
c = 3e+08;      // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
x = 0.07;   // Al concentration in host GaAs
E_g = 1.424 + 1.266*x + 0.266*x^2;    // Band gap of GaAs as a function of x, eV
// As E_g = h*c/lambda, solving for lambda
lambda = h*c/(E_g*e);   // Emission wavelength of light, m
printf("\nThe energy band gap of Al doped GaAs = %4.2f eV", E_g);
printf("\nThe emission wavelength of light = %4.2f micron", lambda/1e-06);
printf("\nThe Al atoms go as substitutional impurity in the host material.");

// Result 
// The energy band gap of Al doped GaAs = 1.51 eV
// The emission wavelength of light = 0.82 micron
// The Al atoms go as substitutional impurity in the host material.
