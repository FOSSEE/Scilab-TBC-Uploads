// Scilab Code Ex1.3 : Page-17 (2006)
clc; clear;
V = 10.58e-29;  // Volume of the unit cell, metre cube
a = poly(0, 'a');      // Declare a variable
a = roots(3*sqrt(3)/2*1.58*a^3-V);        // First lattice parameter, m
c = 1.58*a(3);     // Third lattice parameter, m
printf("\nThe lattice parameters of hcp structure of Ti are:");
printf("\na = %4.2f angstorm, c = %4.2f angstorm", a(3)/1e-010, c/1e-010);

// Result 
// The lattice parameters of hcp structure of Ti are:
// a = 2.95 angstorm, c = 4.67 angstorm 
