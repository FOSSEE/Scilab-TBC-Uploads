// Scilab code Ex4.32: : Pg:181 (2008)
clc;clear;
Lambda = 5890e-08;    // Wavelength of light, cm
n = 20;    // Number of fringes
// Since omega = Lambda*x/2*t and x = n*omega, solving for t
t = n*Lambda/2;    // Thickness of the wire, cm
printf("\nThe thickness of the wire = %4.2e cm", t);

// Result 
// The thickness of the wire = 5.89e-004 cm 