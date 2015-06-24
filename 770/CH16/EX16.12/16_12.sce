clear;
clc;

//Example - 16.12
//Page number - 585
printf("Example - 16.12 and Page number - 585\n\n");

//Given
R = 8.314;//[J/mol*K] - universal gas constant
T = 25 + 273.15;//[K] - Surrounding temperature
den_water = 1000;//[kg/m^(3)] - Density of water
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

x_1 = 1 - x_2_act;

//Molar volume of water can be calculated as
V_l_water = (1/den_water)*M_wt_water*10^(-3);//[m^(3)/mol]

//The osmotic pressure is given by
pi = -(R*T*log(x_1))/V_l_water;//[N/m^(2)]
pi = pi*10^(-5);//[bar]
//The minimum pressure to desalinate sea water is nothing but the osmotic pressure

printf("The minimum pressure to desalinate sea water is %f bar",pi);


