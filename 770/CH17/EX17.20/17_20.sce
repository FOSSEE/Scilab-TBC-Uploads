clear;
clc;

//Example - 17.20
//Page number - 622
printf("Example - 17.20 and Page number - 622\n\n");

// Given
delta_G_H2O_298 = -237.034;//[kJ/mol] - Standard Gibbs free energy of formation of H2O (l) at 298 K
F = 96485;//[C/mol] - Faraday constant

//(1)
// For the reaction
// H2 (g) + (1/2)*O2 (g) - H2O (l)
n = 2;// Number of electrons transferred in the reaction

// The standard Gibbs free energy change of the reaction is given by
// delta_G_rkn = delta_G_for_H2O(l) - delta_G_for_H2(g) - (1/2/)*delta_G_for_O2(g)
// Since delta_G_for_H2  = 0 and delta_G_for_O2 = 0  (pure components)
delta_G_rkn = delta_G_H2O_298;//[kJ]
delta_G_rkn = delta_G_rkn*10^(3);//[J]

// delta_G_rkn = -n*F*E_0
// Thus standard equilibrium cell voltage is given by
E_0 = - delta_G_rkn/(n*F);///[V]

printf(" (1).The standard equilibrium cell voltage is %f V\n\n",E_0);

//(2)
// For the reaction
// 2*H2 (g) + O2 (g) - 2*H2O (l)
n_prime = 4;// Number of electrons transferred in the reaction

// The standard Gibbs free energy change of the reaction is given by
// delta_G_rkn = 2*delta_G_for_H2O(l) - 2*delta_G_for_H2(g) - delta_G_for_O2(g)
// Since delta_G_for_H2  = 0 and delta_G_for_O2 = 0  (pure components)
delta_G_rkn_prime = 2*delta_G_H2O_298;//[kJ]
delta_G_rkn_prime = delta_G_rkn_prime*10^(3);//[J]

// delta_G_rkn = -n*F*E_0
// Thus standard equilibrium cell voltage is given by
E_0_prime = - delta_G_rkn_prime/(n_prime*F);///[V]

printf(" (2).The standard equilibrium cell voltage is %f V\n\n",E_0_prime);

// Thus the result obtained is same for both the reactions



