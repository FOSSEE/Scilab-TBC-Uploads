// Scilab Code Ex5.5: Page-177 (2006)
clc; clear;
h = 6.626e-34;  // Planck's constant, Js
h_bar = h/(2*%pi);  // Reduced Planck's constant, Js
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
m = 9.1e-031;   // Mass of an electron, kg
V = 1.0e-06; // Volume of unit cube of material, metre cube

// For Mg
E_F = 7.13*e;  // Fermi energy of Mg, J
s = 2*%pi^2/(e*V)*(h_bar^2/(2*m))^(3/2)*(E_F)^(-1/2);  // Energy separation between levels for Mg, eV
printf("\nThe energy separation between adjacent levels for Mg = %5.3e eV", s);

// For Cs
E_F = 1.58*e;  // Fermi energy of Cs, J
s = 2*%pi^2/(e*V)*(h_bar^2/(2*m))^(3/2)*(E_F)^(-1/2);  // Energy separation between levels for Cs, eV
printf("\nThe energy separation between adjacent levels for Cs = %5.3e eV", s);


// Result
// The energy separation between adjacent levels for Mg = 5.517e-23 eV
// The energy separation between adjacent levels for Cs = 1.172e-22 eV
