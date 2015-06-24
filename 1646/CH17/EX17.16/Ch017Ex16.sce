// Scilab code Ex17.16 : Pg:897 (2011)
clc;clear;
V = 1000;    // Operating voltage of the GM counter, volt
a = 1e-04'    // Radius of GM counter wire, m
b = 2e-02;    // Radius of cathode, m
E = V/(2.3026*a*log10(b/a));    // Maximum radial field at the surface of central wire of GM tube, V/m
tau = 1e+09;    // Life time of GM tube, counts
N = tau/(50*60*60*2000);    // Life of the GM counter, years
printf("\nThe maximum radial field at the surface of central wire of GM tube = %4.2e V/m", E);
printf("\nThe life of the GM counter = %4.2f years", N);

// Result
// The maximum radial field at the surface of central wire of GM tube = 1.89e+006 V/m
// The life of the GM counter = 2.78 years  
