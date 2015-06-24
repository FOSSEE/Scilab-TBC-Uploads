clear;
clc;

//Example - 6.6
//Page number - 223
printf("Example - 6.6 and Page number - 223\n\n");

//Given
T_1 = 298.15;//[K] - Standard temperature
T_2 = 500;//[K] - Reaction temperature

a_C2H6 = 1.648;
a_O2 = 6.085;
a_CO2 = 5.316;
a_H2O = 7.700;
b_C2H6 = 4.124*10^(-2);
b_O2 = 0.3631*10^(-2);
b_CO2 = 1.4285*10^(-2);
b_H2O = 0.04594*10^(-2);
c_C2H6 = -1.530*10^(-5);
c_O2 = -0.1709*10^(-5);
c_CO2 = -0.8362*10^(-5);
c_H2O = 0.2521*10^(-5);
d_C2H6 = 1.740*10^(-9);
d_O2 = 0.3133*10^(-9);
d_CO2 = 1.784*10^(-9);
d_H2O = -0.8587*10^(-9);

//Since excess is entering and leaving at the same temperature,therefore it does not take or give any heat to the system.
//Therefore the heat exchange is only due to heat of raction at temperature T, or Q = delta_H_rkn_T

delta_H_C2H6_for_298 = -20.236*10^(3);//[cal/mol] - Enthalpy of formation of C2H6 at 298.15 K
delta_H_CO2_for_298 = -94.0518*10^(3);//[cal/mol] - Enthalpy of formation of CO2 at 298.15 K
delta_H_H2O_for_298 = -57.7979*10^(3);//[cal/mol] - Enthalpy of formation of H2O at 298.15 K

delta_H_rkn_298 = 2*delta_H_CO2_for_298 + 3*delta_H_H2O_for_298 - delta_H_C2H6_for_298;//[cal] - Reaction enthalpy at 298.15 K

//Standard enthalpy change of reaction at temperature T is given by,
//delta_H_rkn_T = delta_rkn_298 + delta_Cp_0*delta_T
delta_a = 2*a_CO2 + 3*a_H2O - a_C2H6 - 7/2*(a_O2);
delta_b = 2*b_CO2 + 3*b_H2O - b_C2H6 - 7/2*(b_O2);
delta_c = 2*c_CO2 + 3*c_H2O - c_C2H6 - 7/2*(c_O2);
delta_d = 2*d_CO2 + 3*d_H2O - d_C2H6 - 7/2*(d_O2);

//Cp_0 = delta_a + (delta_b*T) + (delta_c*T^(2)) + (delta_d*T^(3));
//Therefore we get,
delta_H_rkn_500 = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T_2);//[cal]
delta_H_rkn_500 = delta_H_rkn_500*10^(-3);//[kcal]

printf(" The heat exchange of the reaction at 500 K is %f kcal",delta_H_rkn_500);
