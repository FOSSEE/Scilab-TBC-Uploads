clear;
clc;

//Example - 7.34
//Page number - 269
printf("Example - 7.34 and Page number - 269\n\n");

//Given
T_1 = 0.01 +273.15;//[K]
T_2 = 1 + 273.15;//[K]
P_sat_1 = 0.611;//[kPa] - P_sat at temperature T_1
P_sat_2 = 0.657;//[kPa] - P_sat at temperature T_2
Mol_wt = 18.015;//[g/mol] - Molecular weight of water
R = 8.314;//[J/mol*K] - Universal gas constant

// The clapeyron equation is given by
// log(P_sat_2/P_sat_1) = (-delta H_LV/R)*(1/T_2 - 1/T_1)

// Solving the above equation
delta_H = -(log(P_sat_2/P_sat_1)/(1/T_2 - 1/T_1))*R;//[J/mol]
delta_H = delta_H/Mol_wt;//[kJ/kg]

printf(" The enthalpy of vaporization is %f kJ/kg\n",delta_H);

// Entropy of vaporization is given by
S_vap = delta_H/T_2;//[kJ/kg-K]
printf(" The entropy of vaporization is %f kJ/kg-K",S_vap);








