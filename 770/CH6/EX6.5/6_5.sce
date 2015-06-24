clear;
clc;

//Example - 6.5
//Page number - 222
printf("Example - 6.5 and Page number - 222\n\n");

//Given
//Cp_0 = 7.7 + 0.04594*10^(-2)*T + 0.2521*10^(-5)*T^(2) - 0.8587*10^(-9)*T^(3)

delta_H_rkn_298 = -57.7979*10^(3);//[cal/mol] - Reaction enthalpy at 298.15 K
delta_G_rkn_298 = -54.6351*10^(3);//[cal/mol] - Gibbs free energy change for formation of H2O at 298.15 K

//Standard enthalpy change of reaction at temperature T is given by,
//delta_H_rkn_T = delta_rkn_298 + delta_Cp_0*delta_T
T_1 = 298.15;//[K] - Standard temperature
T_2_1 = 873.15;//[K] - Reaction temperature
T_2_2 = 1000;//[K] - Reaction temperature

//Therefore we get,
delta_H_rkn_873 = delta_H_rkn_298 + integrate('7.7+0.04594*10^(-2)*T+0.2521*10^(-5)*T^(2)-0.8587*10^(-9)*T^(3)','T',T_1,T_2_1);;//[cal/mol]
delta_H_rkn_1000 = delta_H_rkn_298 + integrate('7.7+0.04594*10^(-2)*T+0.2521*10^(-5)*T^(2)-0.8587*10^(-9)*T^(3)','T',T_1,T_2_2);//[cal/mol]

printf(" Standard enthalpy change of reaction at 873 K is %f cal/mol\n\n",delta_H_rkn_873);
printf(" Standard enthalpy change of reaction at 1000 K is %f cal/mol\n\n",delta_H_rkn_1000);

//Now determining the standard entropy change of reaction at 298.15 K
delta_S_rkn_298 = (delta_H_rkn_298 - delta_G_rkn_298)/298.15;//[cal/mol-K]

delta_S_rkn_873 = delta_S_rkn_298 + integrate('(7.7+0.04594*10^(-2)*T+0.2521*10^(-5)*T^(2)-0.8587*10^(-9)*T^(3))/T','T',T_1,T_2_1);//[cal/mol-K]
delta_S_rkn_1000 = delta_S_rkn_298 + integrate('(7.7+0.04594*10^(-2)*T+0.2521*10^(-5)*T^(2)-0.8587*10^(-9)*T^(3))/T','T',T_1,T_2_2);//[cal/mol-K]
//Therefore,the standard Gibbs free energy change of the reaction is given by,
delta_G_rkn_873 = (delta_H_rkn_873 - 873.15*delta_S_rkn_873)*10^(-3);//[kcal/mol]
delta_G_rkn_1000 = (delta_H_rkn_1000 - 1000*delta_S_rkn_1000)*10^(-3);//[kcal/mol]

printf(" Standard Gibbs free energy change of reaction at 873 K is %f kcal/mol\n\n",delta_G_rkn_873);
printf(" Standard Gibbs free energy change of reaction at 1000 K is %f kcal/mol\n",delta_G_rkn_1000);


