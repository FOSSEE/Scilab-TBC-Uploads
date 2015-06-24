
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 5")
//Temperature of the sun in K
T=5800;
//For the case of Solar irradiation, value of the product of lamda and T in micron-K
lamda_T_1=3*T;// value of lamda is taken from Example 9.4
//From table 9.1
// For lamda_T_1, ratio of blackbody emission between zero and lamda_l to the total emission
r_1=0.98;
//This means that 98% of the solar radiation falls below 3 microns
//Hemispherical emissivity of an aluminum paint at wavelengths below 3 microns
epsilon_lamda_1=0.4;
//Hemispherical emissivity of an aluminum paint at longer wavelengths
epsilon_lamda_2=0.8;
disp("Effective absorptivity for first case")
//Effective absorptivity
alpha_1=(r_1*epsilon_lamda_1)+(epsilon_lamda_2*0.02)
//For the case second with source at 800 K, value of the product of lamda and T in micron-K
lamda_T_2=3*800;
// For lamda_T_2, ratio of blackbody emission between zero and lamda_l to the total emission
r_2=0.14;
disp("Effective absorptivity for second case")
//Effective absorptivity
alpha_2=(r_2*epsilon_lamda_1)+(epsilon_lamda_2*0.86)
