clear;
clc;

// Illustration 1.9
// Page: 27

printf('Illustration 1.9 - Page:27 \n\n');
// Solution

//*****Data*****//
//    A-acetic acid(solute)     B-acetone(solvent)
T = 313; // [K]
// The following data are available (Reid, et al., 1987):

// Data for acetic acid
T_bA = 390.4; // [K]
T_cA = 594.8; // [K]
P_cA = 57.9; // [bar]
V_cA = 171; // [cubic cm/mole]
M_A = 60; // [gram/mole]

// Data for acetone
T_bB = 329.2; // [K]
T_cB = 508; // [K]
P_cB = 47; // [bar]
V_cB = 209; // [cubic cm/mole]
u_bB = 0.264; // [cP]
M_B = 58; // [gram/mole]
phi = 1;

printf('Illustration 1.9 (a) - Page:27 \n\n');
// Solution (a)
// Using equation 1.48
V_bA = 0.285*(V_cA)^1.048; // [cubic cm/mole]

// Using the Wilke-Chang correlation , equation 1.52
D_abo1 = (7.4*10^-8)*(sqrt(phi*M_B))*T/(u_bB*(V_bA)^.6);
printf("Diffusivity of acetic acid in a dilute solution in acetone  at 313 K using the Wilke-Chang correlation is %e square cm/s\n",D_abo1);
// From Appendix A, the experimental value is 4.04*10^-5 square cm/s
D_aboexp = 4.04*10^-5; // [square cm/s]
percent_error1 = ((D_abo1-D_aboexp)/D_aboexp)*100; // [%]
printf("The percent error of the estimate, compared to the experimental value is %f\n\n ",percent_error1);

printf('Illustration 1.9 (b) - Page:28 \n\n');
// Solution (b)

// Using the Hayduk and Minhas correlation for nonaqueous solutions

V_bA = V_bA*2; // [cubic cm/mole]
V_bB = 0.285*(V_cB)^1.048; // [cubic cm/mole]

// For acetic acid (A)
T_brA = T_bA/T_cA; // [K]
// Using equation 1.55 
alpha_cA =  0.9076*(1+((T_brA)*log(P_cA/1.013))/(1-T_brA));
sigma_cA = (P_cA^(2/3))*(T_cA^(1/3))*(0.132*alpha_cA-0.278)*(1-T_brA)^(11/9); // [dyn/cm]

// For acetone (B)
T_brB = T_bB/T_cB; // [K]
// Using equation 1.55 
alpha_cB =  0.9076*(1+((T_brB*log(P_cB/1.013))/(1-T_brB)));
sigma_cB = (P_cB^(2/3))*(T_cB^(1/3))*(0.132*alpha_cB-0.278)*(1-T_brB)^(11/9); // [dyn/cm]

// Substituting in equation 1.54
D_abo2 = (1.55*10^-8)*(V_bB^0.27)*(T^1.29)*(sigma_cB^0.125)/((V_bA^0.42)*(u_bB^0.92)*(sigma_cA^0.105));

printf("Diffusivity of acetic acid in a dilute solution in acetone  at 313 K using the Hayduk and Minhas correlation is %e square cm/s\n",D_abo2);

percent_error2 = ((D_abo2-D_aboexp)/D_aboexp)*100; // [%]
printf("The percent error of the estimate, compared to the experimental value is %f\n\n ",percent_error2);
