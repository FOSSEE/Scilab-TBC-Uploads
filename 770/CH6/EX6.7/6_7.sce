clear;
clc;

//Example - 6.7
//Page number - 224
printf("Example - 6.7 and Page number - 224\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 600;//[K] - Reaction temperature

a_C2H6 = -8.65;
a_H2O = 7.700;
a_CH4 = 4.750;
a_O2 = 6.085;
b_C2H6 = 11.578*10^(-2);
b_H2O = 0.04594*10^(-2);
b_CH4 = 1.200*10^(-2);
b_O2 = 0.3631*10^(-2);
c_C2H6 = -7.540*10^(-5);
c_H2O = 0.2521*10^(-5);
c_CH4 = 0.3030*10^(-5);
c_O2 = -0.1709*10^(-5);
d_C2H6 = 18.54*10^(-9);
d_H2O = -0.8587*10^(-9);
d_CH4 = -2.630*10^(-9);
d_O2 = 0.3133*10^(-9);

delta_S_CH4_for_298 = 44.50;//[cal/mol-K] - Entropy of formation of CH4 at 298.15 K
delta_S_O2_for_298 = 49.00;//[cal/mol-K] - Entropy of formation of O2 at 298.15 K
delta_S_C2H6_for_298 = 64.34;//[cal/mol-K] - Entropy of formation of C2H6 at 298.15 K
delta_S_H2O_for_298 = 45.11;//[cal/mol-K] - Entropy of formation of C2H6 at 298.15 K

//Cp_0 = delta_a + (delta_b*T) + (delta_c*T^(2)) + (delta_d*T^(3));

//Standard entropy change of reaction at temperature T is given by,
//delta_S_rkn_T = delta_rkn_298 + delta_Cp_0*delta_T
delta_a = 1/6*(a_C2H6) + 3/2*(a_H2O) - a_CH4 - 3/4*(a_O2);
delta_b = 1/6*(b_C2H6) + 3/2*(b_H2O) - b_CH4 - 3/4*(b_O2);
delta_c = 1/6*(c_C2H6) + 3/2*(c_H2O) - c_CH4 - 3/4*(c_O2);
delta_d = 1/6*(d_C2H6) + 3/2*(d_H2O) - d_CH4 - 3/4*(d_O2);

delta_S_rkn_298 = 1/6*(delta_S_C2H6_for_298) + 3/2*(delta_S_H2O_for_298) - delta_S_CH4_for_298 - 3/4*(delta_S_O2_for_298);//[cal/K]
delta_S_rkn_600 = delta_S_rkn_298 + integrate('(delta_a+delta_b*T+delta_c*T^(2)+delta_d*T^(3))/T','T',T_1,T_2);//[cal/K]

printf(" Change in entropy of the reaction at 298.15 K is %f cal/K\n\n",delta_S_rkn_298);
printf(" Standard entropy change of reaction at 600 K is %f cal/K",delta_S_rkn_600);
