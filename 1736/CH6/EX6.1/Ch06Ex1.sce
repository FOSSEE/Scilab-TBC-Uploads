// Scilab Code Ex6.1: Page-190 (2006)
clc; clear;
S = cell(4,2);      // Declare a 4X2 cell
// Enter material names
S(1,1).entries = 'Si'; S(2,1).entries = 'GaAs'; S(3,1).entries = 'GaP'; S(4,1).entries = 'ZnS';
// Enter energy band gap values
S(1,2).entries = 1.11; S(2,2).entries = 1.42; S(3,2).entries = 2.26; S(4,2).entries = 3.60;
h = 6.626e-034;     // Planck's constant, Js
c = 3e+08;      // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
printf("\n______________________________________________________");
printf("\nMaterial      E_g (eV)    Critical Wavelength (micron)");
printf("\n______________________________________________________");
for i = 1:1:4
    lambda = h*c/(S(i,2).entries*e);
    printf("\n%8s        %4.2f           %5.3f", S(i, 1).entries, S(i, 2).entries, lambda/1e-06);
end
printf("\n______________________________________________________");

// Result 
// ______________________________________________________
// Material      E_g (eV)    Critical Wavelength (micron)
// ______________________________________________________
//      Si        1.11           1.119
//    GaAs        1.42           0.875
//     GaP        2.26           0.550
//     ZnS        3.60           0.345
// ______________________________________________________ 
