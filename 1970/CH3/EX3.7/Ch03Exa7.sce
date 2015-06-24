// Scilab code Exa3.7: : Page 125(2011)
clc; clear;
Z = 82;    // Atomic number
E = 1; // Energy of the beta paricle, MeV
I_l = 800;     // Ionisation loss, MeV
R = Z*E/I_l;     // Ratio of radiation loss to ionisation loss
E_1 = I_l/Z;     // Energy of the beta particle when radiation radiation loss is equal to ionisation loss, MeV

printf("\nThe ratio of radiation loss to ionisation loss = %5.3e  \nThe energy of the beta particle = %4.2f MeV ", R, E_1);

// Result
// The ratio of radiation loss to ionisation loss = 1.025e-01  
// The energy of the beta particle = 9.76 MeV  
