//example 5.22

clear;
clc;

disp("C6H12O6(s)+6O2(g)-->6CO2(g)+6H2O(l)");
//Given:
mass=25;//mass of glucose for combustion under standard condition[gm]
T=298;//temperature[K]
Gf1=-910;//Standard Gibbs free energy of formation for C6H12O6[KJ/mol]
Gf2=-394.4;//Standard Gibbs free energy of formation for CO2(g)[KJ/mol]
Gf3=-237.13;//Standard Gibbs free energy of formation for H2O(l)[KJ/mol]
mol.wt=180;//molecular weight of glucose[gm/mol]

//To find the maximum energy that can be extracted as non-expansion work is equal to the change in free energy of the system
G=6*Gf2+6*Gf3-Gf1
n=mass/mol.wt;//no. of moles
Gactual=G*n;//Gibbs free energy for the combustion of 0.139mol of glucose 
printf("The energy that can be extracted as non-expansion work is %f KJ",-Gactual);
