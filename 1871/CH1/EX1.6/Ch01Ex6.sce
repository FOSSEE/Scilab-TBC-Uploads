// Scilab code Ex1.6:  Pg:20 (2008)
clc; clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J
m = 9.1e-031;    // Mass of an electron, kg-m
h = 6.6e-034;    // Planck's constant, joule-sec
Lambda = 0.4e-010;    // de-Broglie wavelength of an electron, m
// Since E = e*V and Lambda = h/sqrt(2*m*e*V), solving for V we have 
V = h^2/(2*Lambda^2*m*e);    // Voltage that must be applied to an electron microscope, volt
printf("\nThe voltage that must be applied to the electron microscope = %3d V", V);

// Result 
// The voltage that must be applied to the electron microscope = 934 V 
// The answer is given wrongly in the textbook