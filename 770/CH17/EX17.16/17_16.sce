clear;
clc;

//Example - 17.16
//Page number - 617
printf("Example - 17.16 and Page number - 617\n\n");

// Given
// CaCO3 (s1) - CaO (s2) + CO2 (g)
T_1 = 898 + 273.15;//[K]
T_2 = 700 + 273.15;//[K]
R = 8.314;//[J/mol-K] - Universal gas constant

P_CO2_T_1 = 1;//[atm] - Decomposition pressure of  CO2 over CaCO3 at 898 C
P_CO2_T_2 = 0.0333;//[atm] - Decomposition pressure of  CO2 over CaCO3 at 700 C

// The equilibrium constant of the reaction is given by
// K = (a_CO2*a_CaO)/a_CaCO3

// Since the pressure is small therefore carbon dioxide can be assumed to behave as ideal gas and thus
// a_CO2 = y_CO2*P/1 = P_CO2

// The activity of CaO is (CaO is pure)
// a_CaO = f_CaO/f_0_CaO = exp[V_CaO*(P - P_0)/(R*T)] = 1  (since pressure is low)

// The activity of CaCO3 is (CaCO3 is pure)
// a_CaCO3 = f_CaCO3/f_0_CaCO3 = exp[V_CaCO3*(P - P_0)/(R*T)] = 1  (since pressure is low)

//Since pressures are around 1 atm,therefore Poynting factors are also near 1, and thus activity of CaO and CaCO3 is unity and equilibrium constant is given by
//K = P_CO2 , therefore
 
// At 898 C
K_T_1 = P_CO2_T_1;
delta_G_T_1 = -R*T_1*log(K_T_1);

// At 700 C
K_T_2 = P_CO2_T_2;
delta_G_T_2 = -R*T_2*log(K_T_2);

printf(" The value of delta_G_rkn at 700 C is %f J\n\n",delta_G_T_1);
printf(" The value of delta_G_rkn at 898 C is %f J\n\n",delta_G_T_2);

