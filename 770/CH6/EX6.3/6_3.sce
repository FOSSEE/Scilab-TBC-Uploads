clear;
clc;

//Example - 6.3
//Page number - 220
printf("Example - 6.3 and Page number - 220\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 1200;//[K] - Reaction temperature


a_CO2 = 5.316;
a_H2 = 6.952;
a_CO = 6.726;
a_H2O = 7.700;
b_CO2 = 1.4285*10^(-2);
b_H2 = -0.04576*10^(-2);
b_CO = 0.04001*10^(-2);
b_H2O = 0.04594*10^(-2);
c_CO2 = -0.8362*10^(-5);
c_H2 = 0.09563*10^(-5);
c_CO = 0.1283*10^(-5);
c_H2O = 0.2521*10^(-5);
d_CO2 = 1.784*10^(-9);
d_H2 = -0.2079*10^(-9);
d_CO = -0.5307*10^(-9);
d_H2O = -0.8587*10^(-9);

delta_H_rkn_298 = -9.8382*10^(3);//[cal] - Reaction enthalpy at 298.15 K
delta_H_CO2_for_298 = -94.0518*10^(3);//[cal/mol-K] - Enthalpy of formation of CO2 at 298.15 K
delta_H_CO_for_298 = -26.4157*10^(3);//[cal/mol-K] - Enthalpy of formation of CO at 298.15 K
delta_H_H2O_for_298 = -57.7979*10^(3);//[cal/mol-K] - Enthalpy of formation of H2O at 298.15 K
delta_G_CO2_for_298 = -94.2598*10^(3);//[cal/mol] - Gibbs free energy change for formation of CO at 298.15 K
delta_G_CO_for_298 = -32.8079*10^(3);//[cal/mol] - Gibbs free energy change for formation of CH3OH at 298.15 K
delta_G_H2O_for_298 = -54.6357*10^(3);//[cal/mol] - Gibbs free energy change for formation of H2O at 298.15 K

//Standard enthalpy change of reaction at temperature T is given by,
//delta_H_rkn_T = delta_rkn_298 + delta_Cp_0*delta_T
delta_a = a_CO2 + a_H2 - a_CO - a_H2O;
delta_b = b_CO2 + b_H2 - b_CO - b_H2O;
delta_c = c_CO2 + c_H2 - c_CO - c_H2O;
delta_d = d_CO2 + d_H2 - d_CO - d_H2O;

//Cp_0 = delta_a + (delta_b*T) + (delta_c*T^(2)) + (delta_d*T^(3));
//Therefore we get,
delta_H_rkn_1200 = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T_2);

printf(" Standard enthalpy change of reaction at 1200 K is %f cal\n\n",delta_H_rkn_1200);

//Let us determine the standard Gibbs free energy change of reaction at 298.15 K
delta_G_rkn_298 = delta_G_CO2_for_298 - delta_G_CO_for_298 - delta_G_H2O_for_298;//[cal]

//Now determining the standard entropy change of reaction at 298.15 K
delta_S_rkn_298 = (delta_H_rkn_298 - delta_G_rkn_298)/298.15;//[cal/mol-K]

delta_S_rkn_1200 = delta_S_rkn_298 + integrate('(delta_a+delta_b*T+delta_c*T^(2)+delta_d*T^(3))/T','T',T_1,T_2);//[cal/K]
//Therefore,the standard Gibbs free energy change of the reaction is given by,
delta_G_rkn_1200 = delta_H_rkn_1200 - 1200*delta_S_rkn_1200;//[cal]

printf(" Standard Gibbs free energy change of reaction at 1200 K is %f cal",delta_G_rkn_1200);

