clear;
clc;

//Example - 16.11
//Page number - 584
printf("Example - 16.11 and Page number - 584\n\n");

//Given
R = 8.314;//[J/mol*K] - Universal gas constant
T = 25 + 273.15;//[K] - Surrounding temperature 
den_water = 1000;//[kg/m^(3)] - Density of water
m_water = 100;//[g] - Mass of water
m_C12H22 = 5;//[g] - Mass of glucise (C12H22)
M_wt_water = 18.015;// Molecular weight of water 
M_wt_C12H22 = 342.30;// Molecular weight of C12H22
mol_water = m_water/M_wt_water;//[mol] - Moles of water
mol_C12H22 = m_C12H22/M_wt_C12H22;//[mol] - Moles of C12H22

//Mole fraction of the water is given by
x_1 = mol_water/(mol_C12H22+mol_water);

//Molar volume of water can be calculated as
V_l_water = (1/den_water)*M_wt_water*10^(-3);//[m^(3)/mol]

//The osmotic pressure is given by
pi = -(R*T*log(x_1))/V_l_water;//[N/m^(2)]
pi = pi*10^(-5);//[bar]

printf("The osmotic pressure of the mixture is %f bar",pi);


