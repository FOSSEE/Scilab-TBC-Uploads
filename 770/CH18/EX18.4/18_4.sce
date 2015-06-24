clear;
clc;

//Example - 18.4
//Page number - 651
printf("Example - 18.4 and Page number - 651\n\n");

// Given
T_1 = 298.15;//[K] - Standard reaction temperature

// The standard enthalpy of formation at 298.15 K is given by
delta_H_for_CO2 = -94.052;//[kcal/mol]
delta_H_for_C8H18 = -59.780;//[kcal/mol]
delta_H_for_H2O = -57.7979;//[kcal/mol]

a_CO2 = 5.316;
a_H2O = 7.700;
a_N2 = 6.903;
b_CO2 = 1.4285*10^(-2);
b_H2O = 0.04595*10^(-2);
b_N2 = -0.03753*10^(-2);
c_CO2 = -0.8362*10^(-5);
c_H2O = 0.2521*10^(-5);
c_N2 = 0.1930*10^(-5);
d_CO2 = 1.784*10^(-9);
d_H2O = -0.8587*10^(-9);
d_N2 = -0.6861*10^(-9);

//(a)
// The reaction with stoichiometric amount of air is
// C3H18 + 12.5(O2 + 3.76N2) - 8CO2 + 9H2O + 47N2

// The standard enthalpy change of reaction at 298.15 K is
delta_H_rkn_298 = 8*delta_H_for_CO2 + 9*delta_H_for_H2O - delta_H_for_C8H18;//[kcal]
delta_H_rkn_298 = delta_H_rkn_298*10^(3);//[cal]

// For exit stream
sum_ai_ni = 8*a_CO2 + 9*a_H2O + 47*a_N2;
sum_bi_ni = 8*b_CO2 + 9*b_H2O + 47*b_N2;
sum_ci_ni = 8*c_CO2 + 9*c_H2O + 47*c_N2;
sum_di_ni = 8*d_CO2 + 9*d_H2O + 47*d_N2;

// From energy balance equation we get
// delta_H_rkn_298 + sum_ai_ni*(T_2 - T_1) + (sum_bi_ni/2)*(T_2^(2) - T_1^(2)) + (sum_ci_ni/3)*(T_2^(3) - T_1^(3)) + (sum_di_ni/4)*(T_2^(4) - T_1^(4))
// Solving above equation for T_2
deff('[y]=f(T_2)','y=delta_H_rkn_298 +sum_ai_ni*(T_2-T_1)+(sum_bi_ni/2)*(T_2^(2)-T_1^(2))+(sum_ci_ni/3)*(T_2^(3)-T_1^(3))+(sum_di_ni/4)*(T_2^(4)-T_1^(4))');
T_2 = fsolve(-1,f);

printf(" (1).The adiabatic flame temperature is %f K\n\n",T_2);

//(2)
// The mean standard heat capacity of various components over the temperature range from 25 to 3000 C is 
Cp_CO2 = 13.91;//[cal/mol-K]
Cp_H2O = 10.16;//[cal/mol-K]
Cp_O2 = 7.88;//[cal/mol-K]
Cp_N2 = 7.45;//[cal/mol-K]

// From energy balance equation we get
// delta_H_rkn_298 + (8*Cp_CO2 + 9*Cp_H2O + 47*Cp_N2)*(T_2_prime)
T_2_prime = - delta_H_rkn_298/(8*Cp_CO2 + 9*Cp_H2O + 47*Cp_N2);//[K]

printf(" (2).The adiabatic flame temperature is %f K",T_2_prime);

