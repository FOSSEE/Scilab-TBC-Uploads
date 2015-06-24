clear;
clc;

//Example - 6.2
//Page number - 219
printf("Example - 6.2 and Page number - 219\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 400;//[K] - Reaction temperature

a_CH3OH = 4.55;
a_CO = 6.726;
a_H2 = 6.952;
b_CH3OH = 2.186*10^(-2);
b_CO = 0.04001*10^(-2);
b_H2 = -0.04576*10^(-2);
c_CH3OH = -0.291*10^(-5);
c_CO = 0.1283*10^(-5);
c_H2 = 0.09563*10^(-5);
d_CH3OH = -1.92*10^(-9);
d_CO = -0.5307*10^(-9);
d_H2 = -0.2079*10^(-9);

delta_H_rkn_298 = -21.6643*10^(3);//[cal] - Reaction enthalpy at 298.15 K
delta_H_CO_for_298 = -26.4157*10^(3);//[cal/mol] - Enthalpy of formation of CO at 298.15 K
delta_H_CH3OH_for_298 = -48.08*10^(3);//[cal/mol] - Enthalpy of formation of CH3OH at 298.15 K
delta_G_CO_for_298 = -32.8079*10^(3);//[cal/mol] - Gibbs free energy change for formation of CO at 298.15 K
delta_G_CH3OH_for_298 = -38.69*10^(3);//[cal/mol] - Gibbs free energy change for formation of CH3OH at 298.15 K

//Standard enthalpy change of reaction at temperature T is given by,
//delta_H_rkn_T = delta_rkn_298 + delta_Cp_0*delta_T
delta_a = a_CH3OH - a_CO - 2*(a_H2);
delta_b = b_CH3OH - b_CO - 2*(b_H2);
delta_c = c_CH3OH - c_CO - 2*(c_H2);
delta_d = d_CH3OH - d_CO - 2*(d_H2);

//Cp_0 = delta_a + (delta_b*T) + (delta_c*T^(2)) + (delta_d*T^(3));
//Therefore we get,
delta_H_rkn_400 = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T_2);

printf(" Standard enthalpy change of reaction at 400 K is %f cal\n\n",delta_H_rkn_400);

//Let us determine the standard Gibbs free energy change of reaction at 298.15 K
delta_G_rkn_298 = delta_G_CH3OH_for_298 - delta_G_CO_for_298;//[cal]

//Now determining the standard entropy change of reaction at 298.15 K
delta_S_rkn_298 = (delta_H_rkn_298 - delta_G_rkn_298)/298.15;//[cal/mol-K]

delta_S_rkn_400 = delta_S_rkn_298 + integrate('(delta_a+delta_b*T+delta_c*T^(2)+delta_d*T^(3))/T','T',T_1,T_2);//[cal/K]
//Therefore,the standard Gibbs free energy change of the reaction is given by,
delta_G_rkn_400 = delta_H_rkn_400 - 400*delta_S_rkn_400;//[cal]

printf(" Standard Gibbs free energy change of reaction at 400 K is %f cal\n",delta_G_rkn_400);


