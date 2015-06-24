// Scilab Code Ex4.8: Page-121 (2006)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
V = 1e-06;    // Volume of cubical box, metre cube
E_F = 7.13*e;  // Fermi energy for Mg, J 
D_EF = V/(2*%pi^2)*(2*m/h_cross^2)^(3/2)*E_F^(1/2);     // Density of states at Fermi energy for Cs, states/eV
E_Mg = 1/D_EF;  // The energy separation between adjacent energy levels of Mg, J
printf("\nThe energy separation between adjacent energy levels of Mg = %5.3e eV", E_Mg/e);
E_F = 1.58*e;  // Fermi energy for Cs, J 
D_EF = V/(2*%pi^2)*(2*m/h_cross^2)^(3/2)*E_F^(1/2);     // Density of states at Fermi energy for Mg, states/eV
E_Mg = 1/D_EF;  // The energy separation between adjacent energy levels of Cs, J
printf("\nThe energy separation between adjacent energy levels of Cs = %5.3e eV", E_Mg/e);

// Result 
// The energy separation between adjacent energy levels of Mg = 5.517e-023 eV
// The energy separation between adjacent energy levels of Cs = 1.172e-022 eV 

