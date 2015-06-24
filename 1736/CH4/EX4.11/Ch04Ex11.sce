// Scilab Code Ex4.11: Page-122 (2006)
clc; clear;
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Charge on an electron, C
lambda = 1.0e-09;   // Mean free path of electron in metal, m
v = 1.11e+05;    // Average velocity of the electron in metal, m/s

// For Lead
n = 13.2e+028;  // Electronic concentration of Pb, per metre cube
sigma = n*e^2*lambda/(m*v);     // Electrical conductivity of lead, mho per metre
printf("\nThe electrical conductivity of lead = %4.2e mho per metre", sigma);

// For Silver
n = 5.85e+28;  // Electronic concentration of Ag, per metre cube
sigma = n*e^2*lambda/(m*v);     // Electrical conductivity of Ag, mho per metre
printf("\nThe electrical conductivity of silver = %4.2e mho per metre", sigma);

// Result 
// The electrical conductivity of lead = 3.35e+007 mho per metre
// The electrical conductivity of silver = 1.48e+007 mho per metre 

