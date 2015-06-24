//computation of free energy of a rxn from equilibrium constant

clear;
clc;

printf("\t Example 18.7\n");

T=298;//temperature, K
R=8.314;//gas constant, J/K mol
Ksp=1.6*10^-10;//solubility constant
deltaG=-R*T*log(Ksp);//here solubility product is equal to equilibrium constant

printf("\t the free energy for the given reaction is : %4.0f kJ/mol \n",deltaG*10^-3);

//End
