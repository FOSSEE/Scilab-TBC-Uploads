// Scilab code Ex4.35: : Pg:188 (2008)
clc;clear;
N = 500;    // Number of fringes
x = 0.01474;    // Distance traversed by the mirror when N fringes cross the field of view, cm
//Since x = N*Lambda/2, solving for Lambda
Lambda = 2*x/(N*1e-08);    // wavelngth of light, angstrom
printf("\nThe wavelength of light = %4.0f angstrom", Lambda);

// Result 
// The wavelength of light = 5896 angstrom 