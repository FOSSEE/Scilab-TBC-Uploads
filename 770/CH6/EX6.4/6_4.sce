clear;
clc;

//Example - 6.4
//Page number - 221
printf("Example - 6.4 and Page number - 221\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 500;//[K] - Reaction temperature

a_NH3 = 6.5846;
a_N2 = 6.903;
a_H2 = 6.952;
b_NH3 = 0.61251*10^(-2);
b_N2 = -0.03753*10^(-2);
b_H2 = -0.04576*10^(-2);
c_NH3 = 0.23663*10^(-5);
c_N2 = 0.1930*10^(-5);
c_H2 = 0.09563*10^(-5);
d_NH3 = -1.5981*10^(-9);
d_N2 = -0.6861*10^(-9);
d_H2 = -0.2079*10^(-9);

delta_H_rkn_298 = -22.08*10^(3);//[cal] - Reaction enthalpy at 298.15 K
delta_H_NH3_for_298 = -11.04*10^(3);//[cal/mol] - Enthalpy of formation of NH3 at 298.15 K
delta_G_NH3_for_298 = -3.976*10^(3);//[cal/mol] - Gibbs free energy change for formation of NH3 at 298.15 K

//Standard enthalpy change of reaction at temperature T is given by,
//delta_H_rkn_T = delta_rkn_298 + delta_Cp_0*delta_T
delta_a = 2*a_NH3 - a_N2 - 3*a_H2;
delta_b = 2*b_NH3 - b_N2 - 3*b_H2;
delta_c = 2*c_NH3 - c_N2 - 3*c_H2;
delta_d = 2*d_NH3 - d_N2 - 3*d_H2;

//Cp_0 = delta_a + (delta_b*T) + (delta_c*T^(2)) + (delta_d*T^(3));
//Therefore we get,
delta_H_rkn_500 = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T_2);

printf(" Standard enthalpy change of reaction at 500 K is %f cal\n\n",delta_H_rkn_500);

//Let us determine the standard Gibbs free energy change of reaction at 298.15 K
delta_G_rkn_298 = 2*delta_G_NH3_for_298;//[cal]

//Now determining the standard entropy change of reaction at 298.15 K
delta_S_rkn_298 = (delta_H_rkn_298 - delta_G_rkn_298)/298.15;//[cal/mol-K]

delta_S_rkn_500 = delta_S_rkn_298 + integrate('(delta_a+delta_b*T+delta_c*T^(2)+delta_d*T^(3))/T','T',T_1,T_2);//[cal/K]
//Therefore,the standard Gibbs free energy change of the reaction is given by,
delta_G_rkn_500 = delta_H_rkn_500 - 500*delta_S_rkn_500;//[cal]

printf(" Standard Gibbs free energy change of reaction at 500 K is %f cal",delta_G_rkn_500);

