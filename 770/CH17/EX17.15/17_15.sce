clear;
clc;

//Example - 17.15
//Page number - 615
printf("Example - 17.15 and Page number - 615\n\n");

// Given
T_1 = 298.15;//[K] - Standard reaction temperature
T_2 = 373;//[K]  - Reaction temperature
P = 1;//[atm]
R = 1.987;//[cal/mol-K] - Universal gas constant

// CH3COOH (l) + C2H5OH (l) - CH3COOC2H5 (l) + H2O (l)

delta_H_CH3COOH_298 = -116.2*10^(3);// [cal/mol]
delta_H_C2H5OH_298 = -66.35*10^(3);// [cal/mol]
delta_H_CH3COOC2H5_298 = -110.72*10^(3);// [cal/mol]
delta_H_H2O_298 = -68.3174*10^(3);// [cal/mol]

delta_G_CH3COOH_298 = -93.56*10^(3);// [cal/mol]
delta_G_C2H5OH_298 = -41.76*10^(3);// [cal/mol]
delta_G_CH3COOC2H5_298 = -76.11*10^(3);// [cal/mol]
delta_G_H2O_298 = -56.6899*10^(3);// [cal/mol]

delta_H_rkn_298 = delta_H_CH3COOC2H5_298 + delta_H_H2O_298 - delta_H_CH3COOH_298 - delta_H_C2H5OH_298;//[cal/mol]
delta_G_rkn_298 = delta_G_CH3COOC2H5_298 + delta_G_H2O_298 - delta_G_CH3COOH_298 - delta_G_C2H5OH_298;//[cal/mol]

// We know that  delta_G_rkn_T = -R*T*log(K)
// At 298.15 K
K_298 = exp(-delta_G_rkn_298/(R*T_1) );

// We know that dlog(K)/dT = delta_H_rkn/(R*T^(2))
// If delta_H_rkn is assumed constant we get
// log(K_2/K_1) = (-delta_H_rkn/R)*(1/T_2 - 1/T_1)
// log(K_373/K_298) = (-delta_H_rkn_298/R)*(1/T_2 - 1/T_1)

K_373 = exp(log(K_298) + (-delta_H_rkn_298/R)*(1/T_2 - 1/T_1));
// Note that the equilibrium constant value rises becauses the reaction is endothermic

printf(" The value of equilibrium constant at 373 K is , K_373 = %f\n\n",K_373);

// Let the reaction coordinate at equilibrium for the reaction be X
// At equilibrium, the moles of the components be
// n_CH3COOH = 1 - X
// n_C2H5OH = 1 - X
// n_CH3COOC2H5 = X
// n_H20 = X
// Total moles = 2

// Kx = (x_CH3COOH*x_C2H5OH)/(x_CH3COOC2H5*x_H2O)
// Assuming the liquid mixture to be ideal,that is Ky = 1, therefore K_x = K
K_x = K_373;
// X^(2)/(1-X)^(2) = K_x
X = (K_x)^(1/2)/(1+(K_x)^(1/2));

// The mole fraction of ethyl acetate is given by
x_CH3COOC2H5 = X/2;

printf(" The mole fraction of ethyl acetate in the equilibrium reaction mixture is given by, x_CH3COOC2H5 = %f\n",x_CH3COOC2H5);





