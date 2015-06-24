clear;
clc;

//Example - 4.9
//Page number - 160
printf("Example - 4.9 and Page number - 160\n\n");

//Given
P_1 = 1;//[MPa] - Initial pressure
T_1 = 200 + 273.15;//[K] - Initial temperature
P_2 = 8;//[MPa] - Final pressure
Y = 1.4;// Index of expansion of gas
R = 8.314;//[J/mol-K] - Universal gas constant

//(1)
// The exit temperature for ideal gas under isentropic conditions is given by 
T_2 = T_1*((P_2/P_1)^((Y-1)/Y));//[K] - Exit temperature
Cp_0 = Y*R/(Y-1);//[J/mol-K] - Specific heat capacity at constant pressure
// For isentropic conditions the enthalpy change for ideal gas is given by
delta_H_s = Cp_0*(T_2 - T_1);//[J/mol]
// Therefore work is given by
W = - delta_H_s;//[J/mol]

printf(" (1).The exit temperature of steam is %f K\n",T_2);
printf("     The required work is %f J/mol\n\n",W);

//(2)
eff = 0.8;// Adiabatic efficiency
// delta_H_s/delta_H_a = 0.8
delta_H_a = delta_H_s/eff;//[J/mol] - Actual enthalpy change
W_a = - delta_H_a;//[J/mol]

// The ideal gas enthalpy is a function only of temperature,therefore actual exit temperature T_2a is given by 
// delta_H_a = Cp_0*(T_2a - T_1)
T_2a = (delta_H_a/Cp_0) + T_1;

printf(" (2).The exit temperature of steam is %f K\n",T_2a);
printf("     The required work is %f J/mol\n\n",W_a);

