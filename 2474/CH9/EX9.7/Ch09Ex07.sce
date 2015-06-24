// Scilab code Ex9.7: Pg.404 (2008)
clc; clear;
T = 300;    // Room temperature, K
k = 1.38e-023;    // Boltzmann constant, J/K
e = 1.6e-019;    // Energy equivalent of 1 eV, J
h = 6.626e-034;    // Planck's constant, Js
f = 4.83e+014;    // average frequency of visible light, Hz
// Part (a)
kT = k*T/e;    // Energy at 300 K, eV
hf = h*f/e;    // Energy in visible region of spectrum, eV
printf("\nIn the visible region:");
if(hf/kT > 1)
printf("\nThe spontaneous emission is far more probable than stimulated emission");
else
 printf("\nThe stimulated emission is far more probable than spontaneous emission");
end;

// Part (b)
f = 2.4e+010;   // Average frequency of microwave, Hz
hf = h*f/e;    // Energy in micro wave region of spectrum, eV
printf("\n\nIn the microwave region:");
if(hf/kT > 1)
printf("\nThe spontaneous emission is far more probable than stimulated emission");
else
 printf("\nThe stimulated emission is far more probable than spontaneous emission");
end;

// Result
// In the visible region:
// The spontaneous emission is far more probable than stimulated emission

// In the microwave region:
// The stimulated emission is far more probable than spontaneous emission 