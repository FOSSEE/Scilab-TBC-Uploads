clear;
clc;

//Example - 6.10
//Page number - 228
printf("Example - 6.10 and Page number - 228\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 1042;//[K] - Reaction temperature

//At 298.15 K
delta_H_CaCO3_for_298 = -289.5*10^(3);//[cal/mol] - Enthalpy of formation of CaCO3 at 298.15 K
delta_H_CaO_for_298 = -151.7*10^(3);//[cal/mol] - Enthalpy of formation of CaO at 298.15 K
delta_H_CO2_for_298 = -94.052*10^(3);//[cal/mol] - Enthalpy of formation of CO2 at 298.15 K
delta_G_CaCO3_for_298 = -270.8*10^(3);//[cal/mol] - Gibbs free energy change for formation of CaCO3 at 298.15 K
delta_G_CaO_for_298 = -144.3*10^(3);//[cal/mol] - Gibbs free energy change for formation of CaO at 298.15 K
delta_G_CO2_for_298 = -94.260*10^(3);//[cal/mol] - Gibbs free energy change for formation of CO2 at 298.15 K

///Standaerd heat capacity data in cal/mol-K are given below, T is in K
//Cp_0_CO2 = 5.316 + 1.4285*10^(-2)*T - 0.8362*10^(-5)*T^(2) + 1.784*10^(-9)*T^(3)
//Cp_0_CaO = 12.129 + 0.88*10^(-3)*T + 2.08*10^(5)*T^(-2)
//Cp_0_CaCO3 = 24.98 + 5.240*10^(-3)*T + 6.199*10^(5)*T^(-2)

//Therefore standard heat capacity of reaction is given by,
//Cp_0_rkn = Cp_0_CO2 + Cp_0_CaO - Cp_0_CaCO3
//On simplification,we get the relation
//Cp_0_rkn = -7.535 + 9.925*10^(-3)*T - 0.8362*10^(-5)*T^(2) + 1.784*10^(-9)*T^(3) + 4.119*10^(5)*T^(-2)

delta_H_rkn_298 = delta_H_CaO_for_298 + delta_H_CO2_for_298 - delta_H_CaCO3_for_298;//[cal] - Enthalpy of reaction at 298.15 K
delta_G_rkn_298 = delta_G_CaO_for_298 + delta_G_CO2_for_298 - delta_G_CaCO3_for_298;//[cal] - Gibbs free energy of the reaction at 298.15 K

delta_H_rkn_1042 = delta_H_rkn_298 + integrate('-7.535+9.925*10^(-3)*T-0.8362*10^(-5)*T^(2)+1.784*10^(-9)*T^(3)+4.119*10^(5)*T^(-2)','T',T_1,T_2);//[cal]

printf(" Standard enthalpy change of reaction at 1042 K is %f cal\n\n",delta_H_rkn_1042);

//Now determining the standard entropy change of reaction at 298.15 K
delta_S_rkn_298 = (delta_H_rkn_298 - delta_G_rkn_298)/298.15;//[cal/K]
delta_S_rkn_1042 = delta_S_rkn_298 + integrate('(-7.535+9.925*10^(-3)*T-0.8362*10^(-5)*T^(2)+1.784*10^(-9)*T^(3)+4.119*10^(5)*T^(-2))/T','T',T_1,T_2);//[cal/K]

//Therefore,the standard Gibbs free energy change of the reaction is given by,
delta_G_rkn_1042 = delta_H_rkn_1042 - 1042*delta_S_rkn_1042;//[cal]

printf(" Standard Gibbs free energy change of reaction at 1042 K is %f cal",delta_G_rkn_1042);


