clear;
clc;

//Example - 6.8
//Page number - 225
printf("Example - 6.8 and Page number - 225\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 973.15;//[K] - Reaction temperature

//At 298.15 K
delta_H_CH4_for_298 = -17.889*10^(3);//[cal/mol] - Enthalpy of formation of CH4 at 298.15 K
delta_H_C_for_298 = 0.00;//[cal/mol] - Enthalpy of formation of C (s, graphite) at 298.15 K
delta_H_H2_for_298 = 0.00;//[cal/mol] - Enthalpy of formation of H2 at 298.15 K
delta_G_CH4_for_298 = -12.140*10^(3);//[cal/mol] - Gibbs free energy change for formation of H2 at 298.15 K
delta_G_C_for_298 = 0.00;//[cal/mol] - Gibbs free energy change for formation of C (s, graphite) at 298.15 K
delta_G_H2_for_298 = 0.00;//[cal/mol] - Gibbs free energy change for formation of H2 at 298.15 K

///Standaerd heat capacity data in cal/mol-K are given below, T is in K
//Cp_0_CH4 = 4.75 + 1.2*10^(-2)*T + 0.303*10^(-5)*T^(2) - 2.63*10^(-9)*T^(3)
//Cp_0_C = 3.519 + 1.532*10^(-3)*T - 1.723*10^(5)*T^(-2)
//Cp_0_H2 = 6.952 - 0.04576*10^(-2)*T + 0.09563*10^(-5)*T^(2) - 0.2079*10^(-9)*T^(3)

//Therefore standard heat capacity of reaction is given by,
//Cp_0_rkn = 2*Cp_0_H2 + Cp_0_C - Cp_0_CH4
//On simplification,we get the relation
//Cp_0_rkn = 12.673 - 0.0113832*T - 1.1174*10^(-6)*T^(2) + 2.2142*10^(-9)*T^(3) - 1.723*10^(5)*T^(-2)

delta_H_rkn_298 = -delta_H_CH4_for_298;//[cal] - Enthalpy of reaction at 298.15 K
delta_G_rkn_298 = -delta_G_CH4_for_298;//[cal] - Gibbs free energy of the reaction at 298.15 K

delta_H_rkn_973 = delta_H_rkn_298 + integrate('12.673-0.0113832*T-1.1174*10^(-6)*T^(2)+2.2142*10^(-9)*T^(3)-1.723*10^(5)*T^(-2)','T',T_1,T_2);//[cal]

printf(" Standard enthalpy change of reaction at 973.15 K is %f cal\n\n",delta_H_rkn_973);

//Now determining the standard entropy change of reaction at 298.15 K
delta_S_rkn_298 = (delta_H_rkn_298 - delta_G_rkn_298)/298.15;//[cal/K]
delta_S_rkn_973 = delta_S_rkn_298 + integrate('(12.673-0.0113832*T-1.1174*10^(-6)*T^(2)+2.2142*10^(-9)*T^(3)-1.723*10^(5)*T^(-2))/T','T',T_1,T_2);//[cal/K]

//Therefore,the standard Gibbs free energy change of the reaction is given by,
delta_G_rkn_973 = delta_H_rkn_973 - 973.15*delta_S_rkn_973;//[cal]

printf(" Standard Gibbs free energy change of reaction at 973 K is %f cal\n",delta_G_rkn_973);
