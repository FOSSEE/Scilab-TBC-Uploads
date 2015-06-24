clear;
clc;

//Example - 16.7
//Page number - 579
printf("Example - 16.7 and Page number - 579\n\n");

//Given
R = 8.314;//[J/mol*K] - Universal gas constant
M_wt_meth = 32;// Molecular weight of methanol 
M_wt_water = 18;// Molecular weight of water 
m_meth = 0.01;//[g] - Mass of methanol added per cm^(3) of solution

//Since the concentration of methanol is very small therefore we can assume that the density of solution = pure water
den_sol = 1;//[g/cm^(3)]

//The mole fraction of solute is given by
//x_2 = (moles of solute in cm^(3) of solution)/(moles of solute + moles of water) in 1 cm^(3) of solution
x_2 = (m_meth/M_wt_meth)/((m_meth/M_wt_meth)+((1-m_meth)/M_wt_water));

//We know that heat of fusion of water is
H_fus = -80;//[cal/g] - Enthalpy change of fusion at 0 C
H_fus = H_fus*4.186*M_wt_water;//[J/mol]

//Therefore freezing point depression is given by
// T - T_m = (R*(T^(2))*x_2)/H_fus
T_f = 273.15;//[K] - Freezing point of water
delta_T_f = (R*(T_f^(2))*x_2)/H_fus;//[K]

printf("The depression in freezing point is given by \n delta_T = %f K",delta_T_f);
