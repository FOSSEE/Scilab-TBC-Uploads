clear;
clc;

//Example - 14.15
//Page number - 485
printf("Example - 14.15 and Page number - 485\n\n")

//Given,
T = 25 + 273.15;//[K] - Temperature
mol_CaCl2 = 0.001;//[mol/kg] - Molality of HCl
A = 0.510;//[(kg/mol)^(1/2)]
Z_positive = 2;//Stoichiometric coefficient of 'Ca' ion
Z_negative = -1;//Stoichiometric coefficient of 'Cl' ion
m_Ca_positive = mol_CaCl2;
m_Cl_negative = 2*mol_CaCl2;

// I = 1/2*[((Z_positive)^(2))*m_Ca_positive + ((Z_negative)^(2))*m_Cl_negative]
I = 1/2*(((Z_positive)^(2))*m_Ca_positive + ((Z_negative)^(2))*m_Cl_negative);

//Using Debye-Huckel limiting law wee get,
// log(Y1) = -A*(abs(Z_positive*Z_negative))*(I^(1/2)))
Y = 10^(-A*(abs(Z_positive*Z_negative))*(I^(1/2)));
printf("The mean activity coefficient at 25 C using Debye-Huckel limiting law is Y = %f\n\n",Y);


