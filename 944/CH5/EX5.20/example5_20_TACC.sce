//example 5.20

clear;
clc;

disp("2H2(g)+O2(g)-->2H2O(l)");
//Given:
Hf1=-285.83;//standard enthalpy of formation of H2O(l)[KJ/mol]
S=-327;//Standard entropy change for the same reaction[J/K]
T=298;//temperature[K]


//To find the spontanity of the reaction
H=2*Hf1-0-0;//Enthalpy of the reaction[KJ/mol]
G=H-T*S*0.001;//Change in Gibbs free energy[KJ]
printf("The change in Gibbs free energy is %f KJ\n ",G);
disp("As change in Gibbs free energy is negative.Therefore,the reaction is spontaneous")
