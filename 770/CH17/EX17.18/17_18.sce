clear;
clc;

//Example - 17.18
//Page number - 619
printf("Example - 17.18 and Page number - 619\n\n");

// Given
T_1 = 298.15;//[K] - Standard reaction temperature
T_2 = 1042;//[K] - Reaction temperature
R = 1.987;//[cal/mol-K] - Universal gas constant

// CaCO3 (s1) - CaO (s2) + CO2 (g)

delta_H_CaCO3_298 = -289.5;//[kcal/mol] - Enthalpy of formation of CaCO3 at 298.15 K
delta_H_CaO_298 = -151.7;//[kcal/mol] - Enthalpy of formation of CaO at 298.15 K
delta_H_CO2_298 = -94.052;//[kcal/mol] - Enthalpy of formation of CO2 at 298.15 K
delta_G_CaCO3_298 = -270.8;//[kcal/mol] - Gibbs free energy change for formation of CaCO3 at 298.15 K
delta_G_CaO_298 = -144.3;//[kcal/mol] - Gibbs free energy change for formation of CaO at 298.15 K
delta_G_CO2_298 = -94.260;//[kcal/mol] - Gibbs free energy change for formation of CO2 at 298.15 K

// The standard heat capacity data as a function of temperature are given below
// Cp_CO2 = 5.316 + 1.4285*10^(2)*T - 0.8362*10^(-5)*T^(2) + 1.784*10^(-9)*T^(3)
// Cp_CaO = 12.129 + 0.88*10^(-3)*T - 2.08*10^(5)*T^(-2)
// Cp_CaCO3 = 24.98 + 5.240*10^(-3)*T - 6.199*10^(5)*T^(-2)
// Therefore Cp_0 is given by
// Cp_0 = Cp_CO2 + Cp_CaO - Cp_CaCO3
// Cp_0 = -7.535 + 9.925*10^(-3)*T - 0.8362*10^(-5)*T^(2) + 1.784*10^(-9)*T^(3) + 4.119*10^(5)*T^(-2)

// The standard enthalpy change of the reaction at 298.15 K is given by
delta_H_rkn_298 = delta_H_CO2_298 + delta_H_CaO_298 - delta_H_CaCO3_298;//[kcal]
delta_H_rkn_298 = delta_H_rkn_298*10^(3);//[cal]
delta_G_rkn_298 = delta_G_CO2_298 + delta_G_CaO_298 - delta_G_CaCO3_298;//[kcal]
delta_G_rkn_298 = delta_G_rkn_298*10^(3);//[cal]

// The standard enthalpy change of the reaction at temperature T is given by
// delta_H_rkn_T = delta_H_rkn_298 + integrate('-7.535 + 9.925*10^(-3)*T - 0.8362*10^(-5)*T^(2) + 1.784*10^(-9)*T^(3) + 4.119*10^(5)*T^(-2)','T',T_1,T);
// On simplification we get
// delta_H_rkn_T = 47005.3 - 7.535*T + 4.9625*10^(-3)*T^(2) - 0.2787*10^(-5)*T^(3) + 0.446*10^(-9)*T^(4) - 4.119*10^(5)*T^(-1)


// log(K_2/K_1) = integrate('delta_H_rkn_T/(R*T^(2))','T',T_1,T)
log_K2_K1 = integrate('(47005.3-7.535*T+4.9625*10^(-3)*T^(2)-0.2787*10^(-5)*T^(3)+0.446*10^(-9)*T^(4) - 4.119*10^(5)*T^(-1))/T^(2)','T',T_1,T_2);// log(K_2/K_1)

// We know that  delta_G_rkn_T = -R*T*log(K)
// At 298.15 K
K_298 = exp(-delta_G_rkn_298/(R*T_1) );

// Putting the values in the above expression we get
// log(K_1042/K_298) = log_K2_K1/R
K_1042 = K_298*exp(log_K2_K1/R);

printf(" The value of equilibrium constant at 1042 K is, K_1042 = %f\n\n",K_1042);

// Since for the given reaction K = P_CO2,where P is in atm, therefore,
P_CO2 = K_1042;
// and thus decomposition takes place till the partial pressure of CO2 reaches 0.095 atm
// After that the decomposition in the closed vessel stops as equilibrium is achieved.

printf(" The equilibrium pressure of CO2 is, P_CO2 = %f atm \n",P_CO2);





