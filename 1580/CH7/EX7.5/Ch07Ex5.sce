// Scilab Code Ex7.5:  Page-7.26 (2004)
clc;clear;
N = 2.7e+25;   // Number density, atoms per metrecube
eo = 8.854e-12; //Permittivity of the free space, farad per metre
er = 1.0000684;    // Dielectric constant of the material
alpha = eo*(er-1)/N;    // Electrical polarization, farad metresquare

printf("\nElectrical polarization = %3.3e farad metresquare", alpha);

// Result
//  Electrical polarization = 2.243e-41 farad metresquare
