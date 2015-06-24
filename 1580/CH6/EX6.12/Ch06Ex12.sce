// Scilab Code Ex 6.12: Page-6.22 (2004)
clc;clear;
k = 1.38e-23;       //  Boltzmann constant, joule per kelvin
T = 300;    // For simplicity room temperature is taken, kelvin
e = 1.6e-19;    // Charge on electron, C
EF = 1;    //  For simplicity Fermi Energy is taken as unity, eV
E = EF+0.5;    // New energy, eV
F_E = 0.01;  // Fermi function, unitless
T = e*(E-EF)/(k*log((1-F_E)/F_E));  //Temperature for 1% probabilty that electron have an energy 0.5eV above the fermi energy, kelvin

printf("\nTemperature = %d kelvin", round(T));

// Results
//  Temperature = 1262 kelvin 
