// Scilab Code Ex7.7:  Page-7.28 (2004)
clc;clear;
N = 385.66e+26;   // Number density, atoms per metrecube
eo = 8.854e-12; //Permittivity of the free space, farad per metre
er = 3.75;    // Dielectric constant of the material
alpha = 3*eo*(er-1)/(N*(er+2)); // Electric polarizability of sulphur atoms
printf("\nElectric polarizability of sulphur atoms = %3.3e farad metresquare", alpha);

// Result
//  Electric polarizability of sulphur atoms = 3.294e-40 farad metresquare 
