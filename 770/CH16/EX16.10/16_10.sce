clear;
clc;

//Example - 16.10
//Page number - 583
printf("Example - 16.10 and Page number - 583\n\n");

//Given
R = 8.314;//[J/mol*K] - universal gas constant
T_b = 373.15;//[K] - Boiling point of water
m_water = 100;//[g] - Mass of water
m_C12H22 = 5;//[g] - Mass of glucise (C12H22)
M_wt_water = 18.015;// Molecular weight of water 
M_wt_C12H22 = 342.30;// Molecular weight of C12H22
mol_water = m_water/M_wt_water;//[mol] - Moles of water
mol_C12H22 = m_C12H22/M_wt_C12H22;//[mol] - Moles of C12H22

H_vap = 540;//[cal/g] - Enthalpy change of vaporisation
H_vap = H_vap*4.186*M_wt_water;//[J/mol]

//Mole fraction of the solute (C12H22) is given by
x_2 = mol_C12H22/(mol_C12H22+mol_water);

//The boiling point elevation is given by
// T - T_b = (R*T_b^(2)*x_2^(2))/H_vap^(2)

delta_T_b = (R*T_b^(2)*x_2)/(H_vap);

printf("The elevation in boiling point is given by \n delta_T = %f C",delta_T_b);
















