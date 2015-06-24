clear;
clc;

//Example - 16.8
//Page number - 580
printf("Example - 16.8 and Page number - 580\n\n");

//Given
R = 8.314;//[J/mol*K] - universal gas constant
T_f = 273.15;//[K] - Freezing point of water
m_water = 100;//[g] - Mass of water
m_NaCl = 3.5;//[g] - Mass of NaCl
M_wt_water = 18.015;// Molecular weight of water 
M_wt_NaCl = 58.5;// Molecular weight of NaCl
mol_water = m_water/M_wt_water;//[mol] - Moles of water
mol_NaCl = m_NaCl/M_wt_NaCl;//[mol] - Moles of NaCl

H_fus = -80;//[cal/g] - Enthalpy change of fusion at 0 C
H_fus = H_fus*4.186*M_wt_water;//[J/mol]

//Mole fraction of the solute (NaCl) is given by
x_2 = mol_NaCl/(mol_NaCl+mol_water);

//But NaCl is compietely ionized and thus each ion acts independently to lower the water mole fraction.
x_2_act = 2*x_2;// Actual mole fraction

//Now depression in freezing point is given by
// T - T_m = (R*(T^(2))*x_2_act)/H_fus
delta_T_f = (R*(T_f^(2))*x_2_act)/H_fus;//[C]

//Thus freezing point of seawater = depression in freezing point

printf("The freezing point of seawater is  %f C",delta_T_f);


