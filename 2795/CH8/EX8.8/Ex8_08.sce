// Scilab Code Ex8.8: Page-291 (2014)
clc; clear;
delta_E = 0.0021;    // Energy difference for the 3p subshell of sodium, eV
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m = 9.11e-031;    // Rest of an an electron, kg
g_s = 2;    // Gyromagnetic ratio due to spin splitting
// As delta_E = g_s*e*h_bar/(2*m)*B, solving for B
B = m*delta_E/h_bar;    // Internal magnetic field causing the LS splitting, T
printf("\nThe internal magnetic field causing the LS splitting = %2d T", B);

// Result
// The internal magnetic field causing the LS splitting = 18 T