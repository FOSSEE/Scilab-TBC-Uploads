// Scilab code Ex5.29: Pg:236 (2008)
clc;clear;
Lambda = 6e-05;    // Wavelength of the light, cm
NA = 0.12;    // numerical aperture
x = Lambda/(2*NA);    // Minimum resolvable distance between two nearby objects 
RP = 1/x;    // Resolving power of a microscope 
printf("\nThe resolving power of the microscope = %4d ", RP);

// Result 
// The resolving power of the microscope = 4000