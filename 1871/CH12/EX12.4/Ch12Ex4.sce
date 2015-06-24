// Scilab code Ex12.4: Pg:468 (2008)
clc;clear;
n1 = 1.52;    // Core refractive index of an fibre
d = 29e-06;    // Core  diameter of fiber, m
delta = 0.0007;    // Fractional difference index
lambda_0 = 1.3e-06;    // Wavelength of light, m
// Since delta = (n1-n2)/n1, solving for n2
n2 = n1-n1*delta;    // Cladding refractive index of fiber
V = %pi*d*sqrt(n1^2 - n2^2)/lambda_0;    // Normalized frequency for the fiber
N = 1/2*V^2;    // Number of modes the fiber will support
printf("\nThe normalized frequency for fiber = %5.3f ", V);
printf("\nThe number of modes supported by the fiber = %1.0f ", N);

// Result
// The normalized frequency for fiber = 3.985 
// The number of modes supported by the fiber = 8 