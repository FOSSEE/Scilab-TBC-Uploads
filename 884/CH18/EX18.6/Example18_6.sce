//computation of equilibrium constant from free energy of a rxn

clear;
clc;

printf("\t Example 18.6\n");

T=298;//temperature, K
R=8.314;//gas constant, J/K mol
GH2=0;//free energy of formation of H2, kJ/mol
GH2O=-237.2;//free energy of formation of H2O, kJ/mol
GO2=0;//free energy of formation of O2, kJ/mol
deltaG=1000*(2*GH2+GO2-2*GH2O);//free energy of rxn, J/mol

Kp=exp(-deltaG/(R*T));//equilibrium constant for rxn

printf("\t the equilibrium constant for the given reaction is : %2.0f*10^-84\n",Kp*10^84);

//End
