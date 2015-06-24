clear;
clc;

//Example - 18.6
//Page number - 653
printf("Example - 18.6 and Page number - 653\n\n");

// Given
T_1 = 298.15;//[K] - Standard reaction temperature
V = 2.0*10^(-3);//[m^(3)] - Volume of calorimeter
m = 10;//[g] - Mass of liquid octane
Mol_wt = 114;//[g/mol] - Molecular weight of octane
n = m/Mol_wt;//[mol] - No of moles of octane
R = 8.314;//[J/mol*K] - Universal gas constant

// The standard enthalpy of formation at 298.15 K is given by
delta_H_for_CO2 = -94.052;//[kcal/mol]
delta_H_for_C8H18 = -59.780;//[kcal/mol]
delta_H_for_H2O = -57.7979;//[kcal/mol]

// The standard molar heat capacity of various components in high temperature range from is given by 
// Cp_H2O = 6.970 + 0.3464*10^(-2)*T - 0.04833*10^(-5)*T^(2);
// Cp_O2 = 6.732 + 0.1505*10^(-2)*T - 0.01791*10^(-5)*T^(2);
// Cp_CO2 = 18.036 - 4.474*10^(-5)*T - 158.08/(T^(1/2));
// Therefore we have
// Sum_ni_Cpi_exit = 249.09 + 0.04*T - 0.547*10^(-5)*T^(2) - 1264.64/(T^(1/2))

// The reaction with stoichiometric amount of oxygen is
// C8H18 + 12.5O2 - 8CO2 + 9H2O

// The reaction with 50% excess oxygen is
// C8H18 + 18.75O2 - 8CO2 +9H2O + 6.25O2

// The standard enthalpy change of reaction at 298.15 K is
delta_H_rkn_298 = 8*delta_H_for_CO2 + 9*delta_H_for_H2O - delta_H_for_C8H18;//[kcal]
delta_H_rkn_298 = delta_H_rkn_298*10^(3);//[cal]

// From the energy balance equation we get
// delta_H_rkn_298 + integrate('(sum_ni_Cpi_exit)*dT','T',T_1,T_2)
// delta_H_rkn_298 + 249.09*(T_2 - T_1) + (0.04/2)*(T_2^(2) - T_1^(2)) - ((0.547*10^(-5))/3)*(T_2^(3)-T_1^(3)) - (1264.64*2)*(T_2^(1/2)-T_1^(1/2))
// Solving above equation for T_2
deff('[y]=f(T_2)','y=delta_H_rkn_298 + 249.09*(T_2 - T_1) + (0.04/2)*(T_2^(2)-T_1^(2)) - ((0.547*10^(-5))/3)*(T_2^(3)-T_1^(3)) - (1264.64*2)*(T_2^(1/2)-T_1^(1/2))');
T_2 = fsolve(1000,f);

// When 1 mol of octane reacts the final number of moles in the calorimeter is 23.25
// When n mol of octane reacts the final number of moles in the calorimeter is
n_total = n*23.25;//[mol]

// The maximum explosion pressure is calculated when no heat is dissipated to the surroundings and thus bomb calorimeter attains the adiabatic flame temperature
// Thus maximum explosion pressure is given by
P = (n_total*R*T_2)/V;//[N/m^(2)]
P = P*10^(-5);//[bar]

printf(" The maximum explosion pressure inside the bomb calorimeter is %f bar",P);

