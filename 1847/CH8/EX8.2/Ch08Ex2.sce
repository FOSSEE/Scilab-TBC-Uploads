// Scilab Code Ex8.2:: Page-8.8 (2009)
clc; clear;
E = 0.121;   // Energy difference between the two levels, eV
lambda = 12400/E;   // Wavelength of the radiation, angstrom
f = 3e+08/(lambda*1e-010);  // Frequency of the radiation, Hz

printf("\nThe wavelength of the radiation = %8.1f angstrom", lambda);
printf("\nThe frequency of the radiation = %4.2e Hz", f);

// Result 
// The wavelength of the radiation = 102479.3 angstrom
// The frequency of the radiation = 2.93e+13 Hz 
