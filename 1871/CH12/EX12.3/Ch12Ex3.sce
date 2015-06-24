// Scilab code Ex12.3: Pg:467 (2008)
clc;clear;
n1 = 1.45;    // Core refractive index of an fibre
d = 0.6;    // Core  diameter of fiber, m
NA = 0.16;    // Numerical aperture of fiber
lambda_0 = 9e-007;    // Wavelength of light, m
V = %pi*d*NA/lambda_0;    // Normalized frequency (V-number)for the fiber
printf("\nThe normalized frequency for fiber = %4.2e ", V);

// Result
// The normalized frequency for fiber = 3.35e+005