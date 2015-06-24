clear;
//clc();

// Example 13.4
// Page: 354
printf("Example-13.4  Page no.-354\n\n");

//***Data***//
T = 273.15+25;//[K] Temperature
R = 8.314;//[J/(mol*K)] universal gas constant

// Solubility of AgCl in water follows
// AgCl = Ag+  +  Cl-
// From the Table A.8, free energy of above species are
g_0_Ag = 77.12*1000;//[J/mol]
g_0_Cl = -131.26*1000;//[J/mol]
g_0_AgCl = -109.8*1000;//[J/mol]

// Free energy change of the reacton is given by 
delta_g_0 = g_0_Ag + g_0_Cl - g_0_AgCl;//[J/mol]

// Now equilbrium constant of the reaction is given by
K = exp((-delta_g_0)/(R*T));

// In terms of activity of the components, equilibrium constant is 
// K = [[Ag+]/(1 molal)*[Cl-]/(1 molal)]/[a_AgCl]

// For solids f_i_0 is normaly taken as the fugacity of the pure crystalline solid,and the activity of the pure crystalline solid is = 1.00, so
a_AgCl = 1.00;
// hence 
// [[Ag+]/(1 molal)*[Cl-]/(1 molal)]= K = K_sp , solubility product
printf("The amount of solid dissolved in terms of solubility product is %0.2e",K);










