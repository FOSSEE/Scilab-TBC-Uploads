// Scilab Code Ex3.2: Page-79 (2006)
clc; clear;
V0 = 11e-05;   // Atomic volume of Cu, metre cube per kg
K = 0.75e-011;   // Compressibility of Cu, metre square per newton
alpha = 49e-06; // Coefficient of thermal expansion, per K
gama = 1.9;     // The Grunesien parameter for Cu = 2.4 
Cv = alpha*V0/(K*gama);   // Specific heat of Cu at constant volume, J/kg
printf("\nThe specific heat capacity of Cu = %3.1e J/kg", Cv);

// Result 
// The specific heat capacity of Cu = 3.8e+02 J/kg 
