// Scilab Code Ex 6.10: Page-6.18 (2004)
clc;clear;
k = 1.38e-23;       //  Boltzmann constant, joule per kelvin
T = 300;    // For simplicity room temperature is taken, kelvin
e = 1.6e-19;    // Charge on electron, C
EF = 5.5;    //  Fermi Energy, eV
E = EF+(EF/100);    // New energy, eV
F_E = 0.1;  // Fermi function, unitless
T = e*(E-EF)/(k*log((1-F_E)/F_E));  //Temperature for 10% probabilty that electron in silver have an energy 1% above the fermi energy, kelvin

printf("\nTemperature = %5.1f kelvin", T);

// Results
//  Temperature = 290.2 kelvin 
