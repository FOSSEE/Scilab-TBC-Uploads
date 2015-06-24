// Scilab Code Ex10.6: Page-224 (2010)
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of the electron, kg
N_D = 18.1e+028;    // Number density of conduction electrons in Al, per metre cube
E_F = h^2/(8*m)*(3/%pi*N_D)^(2/3);    // Fermi energy of aluminium, J
Em_0 = 3/5*E_F;    // Mean energy of  the electron at 0K, J
printf("\nThe Fermi energy of aluminium = %5.2f eV", E_F/e);
printf("\nThe mean energy of  the electron at 0K = %4.2f eV", Em_0/e);

// Result
// The Fermi energy of aluminium = 11.70 eV
// The mean energy of  the electron at 0K = 7.02 eV 
