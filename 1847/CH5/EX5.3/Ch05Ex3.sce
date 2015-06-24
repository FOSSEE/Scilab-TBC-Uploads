// Scilab Code Ex5.3 :: Page-5.16 (2009)
clc;clear;
B = 0.70;       // Magnetic field of cyclotron, weber/metre square
q = 1.6e-019;   // Charge of the proton, C
R = 3;      // Radius of Dee's, m
m = 1.67e-027;   // Mass of the proton, kg
E_max = B^2*q^2*R^2/(2*m);  // Maximum energy of the proton in the cyclotron, joule
printf("\nThe maximum energy of the proton in the cyclotron = %4.2e MeV", E_max/1.6e-013);

// Result
// The maximum energy of the proton in the cyclotron = 2.11e+02 MeV 
// The unit has been given wrong in the textbook. It should be MeV instead of eV