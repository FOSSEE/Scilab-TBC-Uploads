clear;
clc;

//Example - 6.1
//Page number - 217
printf("Example - 6.1 and Page number - 217\n\n");


//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 880;//[K] - Reaction temperature

a_SO2 = 6.157;
a_SO3 = 3.918;
a_O2 = 6.732;
b_SO2 = 1.384*10^(-2);
b_SO3 = 3.483*10^(-2);
b_O2 = 0.1505*10^(-2);
c_SO2 = -0.9103*10^(-5);
c_SO3 = -2.675*10^(-5);
c_O2 = -0.01791*10^(-5);
d_SO2 = 2.057*10^(-9);
d_SO3 = 7.744*10^(-9);

delta_H_rkn_298 = -23.45*10^(3);//[cal] - Rkn enthalpy at 298.15 K
delta_H_SO2_for_298 = -70.94*10^(3);//[cal/mol] - Enthalpy of formation of S02 at 298.15 K
delta_H_SO3_for_298 = -94.39*10^(3);//[cal/mol] - Enthalpy of formation of SO3 at 298.15 K
delta_G_SO2_for_298 = -71.68*10^(3);//[cal/mol] - Gibbs free energy change for formation of SO2 at 298.15 K
delta_G_SO3_for_298 = -88.59*10^(3);//[cal/mol] - Gibbs free energy change for formation of SO3 at 298.15 K

//(1)
//Standard enthalpy change of reaction at temperature T is given by,
//delta_H_rkn_T = delta_rkn_298 + delta_Cp_0*delta_T
delta_a = a_SO3 - a_SO2 - (a_O2/2);
delta_b = b_SO3 - b_SO2 - (b_O2/2);
delta_c = c_SO3 - c_SO2 - (c_O2/2);
delta_d = d_SO3 - d_SO2;

//Cp_0 = delta_a + (delta_b*T) + (delta_c*T^(2)) + (delta_d*T^(3));
//Therefore we get,
delta_H_rkn_880 = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T_2);

//On manual simplification of the above expression,we will get the expression for 'delta_H_rkn_880' as a function of T,
 
printf(" (1).The expression for standard enthalpy change of reaction as a function of temperature is given by\n");
printf("      delta_H_rkn_880 = -22534.57 - 5.605*T + 1.012*10^(-2)*T^(2) - 0.585*10^(-5)*T^(3) + 1.422*10^(-9)*T^(4)\n\n")

printf(" (2).Standard enthalpy change of reaction at 880 K is %f cal\n\n",delta_H_rkn_880);

//(3)
//Let us determine the standard entropy change of reaction at 298.15 K
delta_S_SO2_298 = (delta_H_SO2_for_298 - delta_G_SO2_for_298)/298.15;//[cal/mol-K]
delta_S_SO3_298 = (delta_H_SO3_for_298 - delta_G_SO3_for_298)/298.15;//[cal/mol-K]
delta_S_O2_298 = 0;//[cal/mol-K]

delta_S_rkn_298 = delta_S_SO3_298 - delta_S_SO2_298 - (delta_S_O2_298/2);//[cal/K]
delta_S_rkn_880 = delta_S_rkn_298 + integrate('(delta_a+delta_b*T+delta_c*T^(2)+delta_d*T^(3))/T','T',T_1,T_2);//[cal/K]

printf(" (3).Standard entropy change of reaction at 880 K is %f cal/K\n\n",delta_S_rkn_880);

//(4)
delta_G_rkn_880 = delta_H_rkn_880 - 880*delta_S_rkn_880;//[cal]

printf(" (4).Standard Gibbs free energy change of reaction at 880 K is %f cal\n\n",delta_G_rkn_880);

