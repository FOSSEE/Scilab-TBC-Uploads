// Scilab code Ex1.14: Pg:43 (2008)
clc;clear;
d = 2.82e-008;    // Interplanar spacing in sodium chloride crystal, cm
n = 1;    // Order of reflection
theta = 10;    // Glancing angle, degree
// Since 2*d*sin theta = n*Lambda, solving for Lambda
Lambda = 2*d*sind(theta);    // Wavelength of X-rays in Bragg's reflection, cm
printf("\nThe wavelength of X-rays in Bragg reflection = %4.2f angstrom", Lambda/1e-008);

// Result 
// The wavelength of X-rays in Bragg reflection = 0.98 angstrom