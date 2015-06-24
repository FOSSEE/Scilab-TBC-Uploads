clear;
clc;

//Example - 17.19
//Page number - 620
printf("Example - 17.19 and Page number - 620\n\n");

// Given
T_1 = 298.15;//[k] - Standard reaction temperature
T_2 = 1200;//[K] - Reaction temperature
R = 1.987;//[cal/mol-K] - Universal gas consatnt

// C (s) + CO2 (g) - 2*CO2 (g)  // Reaction 1
// CO2 + H2 - CO + H2O  // Reacction 2

K_1 = 63;// Equilibrium constant for the first reaction
K_2 = 1.4;// Equilibrium constant for the secind reaction

delta_G_H2O_298 = -54640;//[cal/mol] - Standard Gibbs free energy of formation of water vapour
delta_H_H2O_298 = -57800;//[cal/mol] - Standard enthalpy change of formation of water vapour
delta_G_rkn_298 = delta_G_H2O_298;

// The standard heat capacity data of the components in cal/mol-K are given below
// Cp_H2 = 6.947 - 0.2*10^(-3)*T + 4.8*10^(-7)*T^(2)
// Cp_O2 = 6.148 + 3.1*10^(-3)*T - 9.2*10^(-7)*T^(2)
// Cp_H2O = 7.256 + 2.3*10^(-3)*T + 2.8*10^(-7)*T^(2)

// Let us consider two more reactions
// C (s) + (1/2)*O2 - CO // Reaction 3
// H2 + (1/2)*O2 - H2O  // Reaction 4

// Considering the above 4 reactions, it can be shown that reaction (3) = reaction (1) + reaction (4) - reaction (2)
// Thus,  delta_G_rkn_3 = delta_G_rkn_1 + delta_G_rkn_4 - delta_G_rkn_2
// or, -R*T*log(K_3) = -R*T*log(K_1) + -R*T*log(K_4) - -R*T*log(K_2)
// K_3 = (K_1*K_4/K_2)

// Now we have to determine K_4 at 1200 K.
// The standard enthalpy change of reaction (4) as a fuction of temperature is given by
// delta_H_rkn_T = -57020 - 2.765*T + 0.475*10^(-3)*T^(2) + 8.67*10^(-8)*T^(3);

// log(K_4_2/K_4_1) = integrate('delta_H_rkn_T/(R*T^(2))','T',T_1,T)
log_K2_K1_4 = integrate('(-57020-2.765*T+0.475*10^(-3)*T^(2)+8.67*10^(-8)*T^(3))/T^(2)','T',T_1,T_2);

// We know that  delta_G_rkn_T = -R*T*log(K)
// At 298.15 K
K_4_298 = exp(-delta_G_rkn_298/(R*T_1) );

// Putting the values in the above expression we get
// log(K_4_1200/K_4_298) = log_K2_K1_R/R
K_4_1200 = K_4_298*exp(log_K2_K1_4/R);
K_4 = K_4_1200;

// Therefore the equilibrium constant for reaction (3) at 1200 K is given by
K_3 = (K_1*K_4)/K_2;

printf(" The equilibrium constant at 1200 K for the given reaction is, K = %e\n",K_3);

