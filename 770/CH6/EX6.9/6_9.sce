clear;
clc;

//Example - 6.9
//Page number - 226
printf("Example - 6.9 and Page number - 226\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 1000;//[K] - Reaction temperature

//At 298.15 K
delta_H_C_for_298 = 0.00;//[cal/mol] - Enthalpy of formation of C(s,graphite) at 298.15 K
delta_H_H2O_for_298 = -57.7979*10^(3);//[cal/mol] - Enthalpy of formation of H2O at 298.15 K
delta_H_CO_for_298 = -26.4157*10^(3);//[cal/mol] - Enthalpy of formation of CO at 298.15 K
delta_H_H2_for_298 = 0.00;//[cal/mol] - Enthalpy of formation of H2 at 298.15 K
delta_G_C_for_298 = 0.00;//[cal/mol] - Gibbs free energy change for formation of C(s, graphite) at 298.15 K
delta_G_H2O_for_298 = -54.6357*10^(3);//[cal/mol] - Gibbs free energy change for formation of H2O at 298.15 K
delta_G_CO_for_298 = -32.8079*10^(3);//[cal/mol] - Gibbs free energy change for formation of CO at 298.15 K
delta_G_H2_for_298 = 0.00;//[cal/mol] - Gibbs free energy change for formation of H2 at 298.15 K

///Standaerd heat capacity data in cal/mol-K are given below, T is in K
//Cp_0_C = 3.519 + 1.532*10^(-3)*T - 1.723*10^(5)*T^(-2)
//Cp_0_H2O = 7.7 + 0.04594*10^(-2)*T + 0.2521*10^(-5)*T^(2) - 0.8587*10^(-9)*T^(3)
//Cp_0_CO = 6.726 + 0.04001*10^(-2)*T + 0.1283*10^(-5)*T^(2) - 0.5307*10^(-9)*T^(3)
//Cp_0_H2 = 6.952 - 0.04576*10^(-2)*T + 0.09563*10^(-5)*T^(2) - 0.2079*10^(-9)*T^(3)

//Therefore standard heat capacity of reaction is given by,
//Cp_0_rkn = Cp_0_H2 + Cp_0_CO - Cp_0_C - Cp_0_H2O
//On simplification,we get the relation
//Cp_0_rkn = 2.459 - 2.0489*10^(-3)*T - 2.817*10^(-7)*T^(2) + 1.201*10^(-10)*T^(3) + 1.723*10^(5)*T^(-2)

delta_H_rkn_298 = delta_H_CO_for_298 + delta_H_H2_for_298 - delta_H_C_for_298 - delta_H_H2O_for_298;//[cal] - Enthalpy of reaction at 298.15 K
delta_G_rkn_298 = delta_G_CO_for_298 + delta_G_H2_for_298 - delta_G_C_for_298 - delta_G_H2O_for_298;//[cal] - Gibbs free energy of the reaction at 298.15 K

delta_H_rkn_1000 = delta_H_rkn_298 + integrate('2.459-2.0489*10^(-3)*T-2.817*10^(-7)*T^(2)+1.201*10^(-10)*T^(3)+1.723*10^(5)*T^(-2)','T',T_1,T_2);//[cal]

printf(" Standard enthalpy change of reaction at 1000 K is %f cal\n\n",delta_H_rkn_1000);

//Now determining the standard entropy change of reaction at 298.15 K
delta_S_rkn_298 = (delta_H_rkn_298 - delta_G_rkn_298)/298.15;//[cal/K]
delta_S_rkn_1000 = delta_S_rkn_298 + integrate('(2.459-2.0489*10^(-3)*T-2.817*10^(-7)*T^(2)+1.201*10^(-10)*T^(3)+1.723*10^(5)*T^(-2))/T','T',T_1,T_2);//[cal/K]

//Therefore,the standard Gibbs free energy change of the reaction is given by,
delta_G_rkn_1000 = delta_H_rkn_1000 - 1000*delta_S_rkn_1000;//[cal]

printf(" Standard Gibbs free energy change of reaction at 1000 K is %f cal\n",delta_G_rkn_1000);
