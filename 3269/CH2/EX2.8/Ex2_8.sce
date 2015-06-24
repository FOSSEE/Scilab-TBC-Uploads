// Example 2.8
clear all;
clc;

disp('The reaction is Tritium(d,n)Helium-4');
// Using standard data table of mass in amu
M_H3 = 3.016049;                             // Atomic mass of Tritium
M_He4 = 4.002604;                            // Atomic mass of Helium
M_d = 2.014102;                              // Atomic mass of Deuterium
M_n = 1.008665;                              // Atomic mass of neutron
// Calculation of total mass of reactants
tot_reac = M_H3+M_d;
// Calculation of total mass of products
tot_prod = M_He4+M_n;
// Calculation 
Q = tot_reac-tot_prod;
// Expressing in MeV by using 1 amu = 931.5 MeV
Q_mev = Q*931.5;
// Result
printf(" \n Q value for the reaction = %5.3f MeV",Q_mev);
if Q_mev > 0 then
    printf("\n The reaction is exothermic. \n");
else
    printf("\n The reaction is endothermic. \n");
end
