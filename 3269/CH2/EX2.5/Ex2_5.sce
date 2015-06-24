// Example 2.5
clear all;
clc;

// From the standard data table
h = 6.626*10^(-34);                         // Planck's constant in J-s
c = 3*10^8;                                 // Speed of light in vacuum in m/sec
// Given data 
disp('The ionization energy of K shell electron in Lead atom is 88keV');
E = 88*10^3;                                // Ionization energy  in keV
// Expressing the result in joules by using 1 eV = 1.6022*10^(-19) J
E = E*1.6022*10^(-19);
printf("From Planck\''s law of photoelectric effect \n Energy = (h*c)/lambda\n");
// Calculation 
lambda = (h*c)/E; 
// Result
printf('\n Wavelength of radiation = %4.3E m\n',lambda);
