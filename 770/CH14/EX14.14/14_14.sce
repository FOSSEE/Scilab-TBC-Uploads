clear;
clc;

//Example - 14.14
//Page number - 485
printf("Example - 14.14 and Page number - 485\n\n")

//Given,
T = 25 + 273.15;//[K] - Temperature
mol_HCl = 0.001;//[mol/kg] - Molality of HCl
A = 0.510;//[(kg/mol)^(1/2)]
Z_positive = 1;//Stoichiometric coefficient of 'H' ion
Z_negative = -1;//Stoichiometric coefficient of 'Cl' ion
m_H_positive = mol_HCl;//
m_Cl_negative = mol_HCl;

// I = 1/2*[((Z_positive)^(2))*m_H_positive + ((Z_negative)^(2))*m_Cl_negative]
I = 1/2*(((Z_positive)^(2))*m_H_positive + ((Z_negative)^(2))*m_Cl_negative);

//Using Debye-Huckel limiting law wee get,
// log(Y1) = -A*(abs(Z_positive*Z_negative))*(I^(1/2)))
Y = 10^(-A*(abs(Z_positive*Z_negative))*(I^(1/2)));
printf("The mean activity coefficient at 25 C using Debye-Huckel limiting law is Y = %f\n\n",Y);

//Using Debye-Huckel extended model we get
//log(Y_prime) = (-A*(abs(Z_positive*Z_negative))*(I^(1/2)))/(1 + (I^(1/2)));
Y_prime = 10^((-A*(abs(Z_positive*Z_negative))*(I^(1/2)))/(1 + (I^(1/2))));
printf("The mean activity coefficient at 25 C using Debye-Huckel extended model is Y = %f\n\n",Y_prime);


