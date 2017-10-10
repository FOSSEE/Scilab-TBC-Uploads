// Ex10_11  Page:221 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
e = 1.6e-019;    // Charge on an electron, C
m = 9.1e-031;    // Mass of an electron, kg
V = 120;    // Accelerating potential, volt
theta = 22;    // The angle at which the reflection maximum is observed, degree
lambda = h/sqrt(2*m*e*V);    // Wavelength of a moving electron, m
h = 1, k = 1, l = 1;    // Miller indices of planes from which the reflection occurs
n = 1;    // Order of diffraction
d_111 = n*lambda/(2*sind(theta)*1e-010);    // Interplanar spacing between (1 1 1) planes, m
a = sqrt(3)*d_111;    // Lattice parameter, m
printf("\nThe lattice parameter = %5.3f angstrom", a);

// Result
// The lattice parameter = 2.591 angstrom 
// The answers vary due to round off error