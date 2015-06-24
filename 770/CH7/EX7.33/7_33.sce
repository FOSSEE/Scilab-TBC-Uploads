clear;
clc;

//Example - 7.33
//Page number - 268
printf("Example - 7.33 and Page number - 268\n\n");

//Given
P = 2;//[atm] - Surrounding pressure
bp_water = 100 + 273.15;//[K] - Boiling point of water at 1 atm pressure
delta_H_vap = 2257;//[kJ/kg] - Enthalpy of vaporization
delta_H_vap = delta_H_vap*18.015;//[J/mol]
R = 8.314;//[J/mol*K] - Universal gas constant

// The clapeyron equation is given by
// log(P_2_sat/P_1_sat) = (-delta H_vap/R)*(1/T_2 - 1/T_1)
P_1_sat = 1;//[atm]
P_2_sat = P;
T_1 = bp_water;

// Solving the above equation
T_2 = 1/((log(P_2_sat/P_1_sat))/(-delta_H_vap/R) + (1/T_1));//[K]
T_2 = T_2 - 273.15;//[C]

printf(" The boiling point of water at a pressure of 2 atm is %f C",T_2);


