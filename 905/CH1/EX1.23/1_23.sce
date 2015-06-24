clear;
clc;

// Illustration 1.23
// Page: 62

printf('Illustration 1.23 - Page:62 \n\n');
// Solution

//*****Data*****//
// A-beta dextrin   B-water
T = 293; // [K]
d = 88.8; // [Average pore diameter, Angstrom]
d_mol = 17.96; // [Molecular diameter, Angstrom]
e = 0.0233; // [porosity]
t = 1.1; // [tortuosity]
D_AB = 3.22*10^-6; // [square cm/s]
//*****//

// Using equation 1.111 to calculate restrictive factor
K_r = (1-(d_mol/d))^4

// Using equation 1.110 to calculate effective diffusivity
D_ABeff = e*D_AB*K_r/t; // [square cm/s]
printf("The effective diffusivity of beta-dextrin at 298 K is %e square cm/s",D_ABeff); 