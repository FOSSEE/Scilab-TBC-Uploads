clear;
clc;

// Example: 12.9
// Page: 486

printf("Example: 12.9 - Page: 486\n\n");

// Solution

//*****Data******//
// Reaction: CO(g) + H2O(g) ----> CO2(g) + H2(g)
T1 = 298;// [K]
T2 = 1000;// [K]
deltaH_298 = -41450;// [J/mol]
deltaGf_298 = -28888;// [J/mol]
alpha_CO2 = 45.369;// [kJ/kmol K]
alpha_H2 = 27.012;// [kJ/kmol K]
alpha_CO = 28.068;// [kJ/kmol K]
alpha_H2O = 28.850;// [kJ/kmol K]
beeta_CO2 = 8.688*10^(-3);// [kJ/kmol square K]
beeta_H2 = 3.509*10^(-3);// [kJ/kmol square K]
beeta_CO = 4.631*10^(-3);// [kJ/kmol square K]
beeta_H2O = 12.055*10^(-3);// [kJ/kmol square K]
R = 8.314;// [J/mol K]
//*************//

delta_alpha = alpha_CO2 + alpha_H2 - (alpha_CO + alpha_H2O);
delta_beeta = beeta_CO2 + beeta_H2 - (beeta_CO + beeta_H2O);
// To obtain the standard heat of reaction:
deltaH_0 = deltaH_298 - (delta_alpha*T1 + (delta_beeta*T1^2)/2);// [kJ/mol]
// From Eqn. 12.52:
IR = (deltaH_0 - delta_alpha*T1*log(T1) - (delta_beeta*T1^2)/2 - deltaGf_298)/T1;// [kJ/mol K]
// Substituting T = T2 and IR in Eqn. 12.51:
deltaG_1000 = deltaH_0 - delta_alpha*T2*log(T2) - (delta_beeta*T2^2)/2 - IR*T2;// [kJ/mol]
printf("Standard Gibbs free energy at 1000 K %.3f kJ\n",deltaG_1000/1000);

// Standard Equilibrium Constant at 1000 K
K_1000 = exp(-(deltaG_1000)/(R*T2));
printf("Standard Equilibrium Constant is %.1f",K_1000);