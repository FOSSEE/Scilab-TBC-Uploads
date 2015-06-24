clear;
clc;

//Example - 18.1
//Page number - 650
printf("Example - 18.1 and Page number - 648\n\n");

// Given

T_1 = 298.15;//[K] - Standard reaction temperature
T_2 = 500;//[K] - Reaction temperature
P = 1;//[atm] - Pressure 

a_CO2 = 5.316;
a_O2 = 6.085;
a_N2 = 6.903;
a_H2O = 7.700;
a_C3H8 = -0.966;
b_CO2 = 1.4285*10^(-2);
b_O2 = 0.3631*10^(-2);
b_N2 = -0.03753*10^(-2);
b_H2O = 0.04594*10^(-2);
b_C3H8 = 7.279*10^(-2);
c_CO2 = -0.8362*10^(-5);
c_O2 = -0.1709*10^(-5);
c_N2 = 0.1930*10^(-5);
c_H2O = 0.2521*10^(-5);
c_C3H8 = -3.755*10^(-5);
d_CO2 = 1.784*10^(-9);
d_O2 = 0.3133*10^(-9);
d_N2 = -0.6861*10^(-9);
d_H2O = -0.8587*10^(-9);
d_C3H8 = 7.580*10^(-9);

// The standard enthalpy of formation at 298.15 K is given by
delta_H_for_CO2 = -94.052;//[kcal/mol]
delta_H_for_C3H8 = -24.820;//[kcal/mol]
delta_H_for_H2O = -57.7979;//[kcal/mol]

// The reaction with stoichiometric amount of air is
// C3H8 + 5(O2 + 3.7N2) - 3CO2 + 4H2O + 18.8N2

// The reaction with 100% excess air is
// C3H8 + 10(O2 + 3.7N2) - 3CO2 + 4H2O + 5O2 + 37.6N2

// The standard enthalpy change of reaction at 298.15 K
delta_H_rkn_298 = 3*delta_H_for_CO2 + 4*delta_H_for_H2O - delta_H_for_C3H8;

// For exit stream
sum_ai_ni = 3*a_CO2 + 4*a_H2O + 5*a_O2 + 37.6*a_N2;
sum_bi_ni = 3*b_CO2 + 4*b_H2O + 5*b_O2 + 37.6*b_N2;
sum_ci_ni = 3*c_CO2 + 4*c_H2O + 5*c_O2 + 37.6*c_N2;
sum_di_ni = 3*d_CO2 + 4*d_H2O + 5*d_O2 + 37.6*d_N2;


// To raise the exit species from 298.15 to 500 K the enthalpy change is
delta_H_rkn = integrate('sum_ai_ni+sum_bi_ni*T+sum_ci_ni*T^(2)+sum_di_ni*T^(3)','T',T_1,T_2);//[cal]
delta_H_rkn = delta_H_rkn*10^(-3);//[kcal]

// Therefore per mole of fuel the heat exchange is
// Q = Heat exchange in step 1 + Heat exchange in step 2
Q = delta_H_rkn_298 + delta_H_rkn;

printf("   The heat transfer from the combustion chamber per mole of fuel is %f kcal (per mol of C3H8)",Q);


