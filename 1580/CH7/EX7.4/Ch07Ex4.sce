// Scilab Code Ex7.4:  Page-7.26 (2004)
clc;clear;
N = 3e+28;   // Number density, atoms per metrecube
eo = 8.854e-12; //Permittivity of the free space, farad per metre
alpha = 10e-40;    // Electrical polarization, farad metresquare
er = 1+(N*alpha/eo);    // Dielectric constant of the material
printf("\nDielectric constant of the material = %3.3f ", er);


// Result
//  Dielectric constant of the material = 4.388 
