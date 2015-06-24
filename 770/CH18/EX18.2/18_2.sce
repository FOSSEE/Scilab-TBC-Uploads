clear;
clc;

//Example - 18.2
//Page number - 650
printf("Example - 18.2 and Page number - 650\n\n");

// Given

T_1 = 298.15;//[K] - Standard reaction temperature

a_CO2 = 5.316;
a_H2O = 7.700;
a_O2 = 6.085;
a_C2H6 = 1.648;
b_CO2 = 1.4285*10^(-2);
b_H2O = 0.04595*10^(-2);
b_O2 = 0.3631*10^(-2);
b_C2H6 = 4.124*10^(-2);
c_CO2 = -0.8362*10^(-5);
c_H2O = 0.2521*10^(-5);
c_O2 = -0.1709*10^(-5);
c_C2H6 = -1.530*10^(-5);
d_CO2 = 1.784*10^(-9);
d_H2O = -0.8587*10^(-9);
d_O2 = 0.3133*10^(-9);
d_C2H6 = 1.740*10^(-9);

// The standard enthalpy of formation at 298.15 K is given by
delta_H_for_CO2 = -94.052;//[kcal/mol]
delta_H_for_C2H6 = -20.236;//[kcal/mol]
delta_H_for_H2O = -57.7979;//[kcal/mol]

// The reaction with stoichiometric amount of air is
// C2H6 + (7/2)O2 - 2CO2 + 3H2O

// The reaction with 4 mol of O2 and 10 mol CO2 is
// C2H6 + 4O2 + 10CO2 - 12H2O + 3H2O + 0.5O2
// The product consists of 12 mol of CO2, 3 mol of water vapour and 0.5 mol of oxygen
delta_H_rkn_298 = 2*delta_H_for_CO2 + 3*delta_H_for_H2O - delta_H_for_C2H6;//[kcal]
delta_H_rkn_298 = delta_H_rkn_298*10^(3);//[cal]

// For exit stream
sum_ai_ni = 12*a_CO2 + 3*a_H2O + 0.5*a_O2;
sum_bi_ni = 12*b_CO2 + 3*b_H2O + 0.5*b_O2;
sum_ci_ni = 12*c_CO2 + 3*c_H2O + 0.5*c_O2;
sum_di_ni = 12*d_CO2 + 3*d_H2O + 0.5*d_O2;

// From energy balance equation we get
// delta_H_rkn_298 + sum_ai_ni*(T_2 - T_1) + (sum_bi_ni/2)*(T_2^(2) - T_1^(2)) + (sum_ci_ni/3)*(T_2^(3) - T_1^(3)) + (sum_di_ni/4)*(T_2^(4) - T_1^(4))
// Solving above equation for T_2
deff('[y]=f(T_2)','y=delta_H_rkn_298 +sum_ai_ni*(T_2-T_1)+(sum_bi_ni/2)*(T_2^(2)-T_1^(2))+(sum_ci_ni/3)*(T_2^(3)-T_1^(3))+(sum_di_ni/4)*(T_2^(4)-T_1^(4))');
T_2 = fsolve(-1,f);

printf(" The adiabatic flame temperature is %f K",T_2);




