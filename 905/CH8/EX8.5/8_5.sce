clear;
clc;

// Illustration 8.5
// Page: 487

printf('Illustration 8.5 -  Page: 487\n\n');

// Solution
//*****Data*****//
T_w = 320; // [K]
T_g = 340; // [K]
lambda_w = 2413; // [Latent Heat of Vaporization at 320K, kJ/kg]
Y_w1 = 0.073; // [kg water/kg dry air]
//*****//
A = 0.95; // [For air water system,A, kJ/kg.K]

//    here A = hg/ky, psychrometric ratio
//    Air-water mixture is saturated at 320K and 1 atm
//    Using equation 8.15
 
Y_w2 = Y_w1 - ((T_g-T_w)*A/lambda_w); // [kg water/kg dry air]
printf("Absolute humidity of air-water mixture at 340 K and 1 atm is %f kg water/kg dry air\n ",Y_w2);