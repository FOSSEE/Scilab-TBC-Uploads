
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 6")
//Stefan–Boltzmann constant in W/m^2 K^4
sigma=5.67e-8;
//Temperature of the painted surface in K
T=1000;
//Temperature of the sun in K
T_s=5800;
//Given, below 2 microns the emissivity  of the surface is 0.3,so
lamda_1=2; //wavelength in microns
epsilon_1=0.3; //emissivity

//Given, between 2 and 4 microns emmisivity is 0.9,so
lamda_2=4;//wavelength in microns
epsilon_2=0.9;//emissivity

//Given, above 4 microns emmisivity is 0.5, so
epsilon_3=0.5;//emissivity

//value of the product of lamda_1 and T in micron-K
lamda_1_T=2e-3*T;

//From table 9.1
// For lamda_1_T, ratio of blackbody emission between zero and lamda_l to the total emission
r_1=0.0667; //1st ratio

//value of the product of lamda_2 and T in micron-K
lamda_2_T=2e-3*T;
//From table 9.1
// For lamda_2_T, ratio of blackbody emission between zero and lamda_l to the total emission
r_2=0.4809; //2nd ratio

disp("a)Effective emissivity over the entire spectrum")
//Effective emissivity
epsilon_bar=epsilon_1*r_1+epsilon_2*(r_2-r_1)+epsilon_3*(1-r_2)

disp("b)Emissive power in W/m^2")
//Emissive power in W/m^2
E=epsilon_bar*sigma*T^4

//value of the product of lamda_1 and T_s in micron-K
lamda_1_T_s=2e-3*T_s;
//From table 9.1
// For lamda_1_T_s, ratio of blackbody emission between zero and lamda_l to the total emission
r_1_s=0.941;
//value of the product of lamda_2 and T_s in micron-K
lamda_2_T_s=2e-3*T_s;
//From table 9.1
// For lamda_2_T_s, ratio of blackbody emission between zero and lamda_l to the total emission
r_2_s=0.99;
disp("c) Average solar absorptivity")
//Average solar absorptivity
alpha_s=epsilon_1*r_1_s+epsilon_2*(r_2_s-r_1_s)+epsilon_3*(1-r_2_s)
