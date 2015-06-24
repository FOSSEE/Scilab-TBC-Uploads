// Scilab Code Ex3.1: Page-79 (2006)
clc; clear;
V0 = 9.1e-05;   // Atomic volume of Pb, metre cube per kg
K = 2.3e-011;   // Compressibility of Pb, metre square per newton
alpha = 86e-06; // Coefficient of thermal expansion, per K
Cv = 1.4e+02;   // Specific heat at constant volume, J/kg
gama = alpha*V0/(K*Cv);    // Grunesien parameter for Pb
printf("\nThe Grunesien parameter for Pb = %3.1f", gama);

// Result 
// The Grunesien parameter for Pb = 2.4 
