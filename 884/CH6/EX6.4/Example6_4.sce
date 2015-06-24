//change in internal energy in a reaction

clear;
clc;

printf("\t Example 6.4\n");

R=8.314;//gas constant, J/K. mol
T=298;//temp in K
deltaH=-566;//enthalpy change, kJ/mol
deltan=2-3;//change in gas moles
deltaE=deltaH-R*T*deltan/1000;//change in internal energy, kJ/mol

printf("\t the change in internal energy in the reaction is : %4.1f kJ/mol\n",deltaE);

//End
