// Scilab Code Ex2.39: Page-96 (2008)
clc; clear;
mu_0 = 4*%pi*1e-007;    // Absolute magnetic permeability of free space, N/ampere-square
I = 15;    // Current through the wire, A
x = 1e-002;    // Distance of observation point from the wire, m
B = mu_0/(4*%pi)*2*I/x;    // Magnetic field at 1 cm distance, T
printf("\nThe magnetic field due to the current carrying wire at %d cm distance = %1.0e tesla", x/1e-002, B);
x = 5;    // Distance of observation point from the infinite straight conductor, m
I = 100;    // Current through the straight conductor, A
B = mu_0/(4*%pi)*2*I/x;    // Magnetic field at 1 cm distance, T
printf("\nThe magnetic field due to the current carrying infinite straight conductor at %d m distance = %1.0e tesla", x, B);

// Result 
// The magnetic field due to the current carrying wire at 1 cm distance = 3e-004 tesla
// The magnetic field due to the current carrying infinite straight conductor at 5 m distance = 4e-006 tesla 