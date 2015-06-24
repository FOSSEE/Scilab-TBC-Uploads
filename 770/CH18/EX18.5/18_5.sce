clear;
clc;

//Example - 18.5
//Page number - 652
printf("Example - 18.5 and Page number - 652\n\n");

// Given
// N2 + 3H2 - 2NH3
T_1 = 700;//[K] - Reaction temperature
Max_adia_rise = 100;///[K] - Maximum adiabatic rise in temperature
T_2 = T_1 + Max_adia_rise;//[K] - 

delta_H_rkn_700 = -94.2;//[kJ] - Standard enthalpy of reaction at 700 K
delta_H_rkn_700 = delta_H_rkn_700*10^(3);//[J]

// The mean standard heat capacity of various components over the temperature range from 700 to 800 K is 
Cp_N2 = 30.0;//[cal/mol-K]
Cp_H2 = 28.9;//[cal/mol-K]
Cp_NH3 = 49.2;//[cal/mol-K]

// The energy balance equation is
// X*delta_H_rkn_700 + integrate('(sum_ni_Cpi_exit)*dT','T',T_1,T_2)

//At exit, let moles of NH3 = (1-X),  moles of H2 = (3-3X),  moles of NH3 = 2X . Therefore we have,
// delta_H_rkn_700*X + {(1-X)*Cp_N2 + (3-3X)*Cp_H2 + (2X)*Cp_NH3}*(T_2 - T_1)
// On simplification we get, 960.3*X = 116.7
X = 116.7/960.3;

printf(" The maximum allowable conversion fraction in the reactor is given by, X =  %f \n",X);



