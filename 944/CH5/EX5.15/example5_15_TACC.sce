//example 5.15

clear;
clc;

disp("C6H12O6(s) + 6O2(g) --> 6CO2(g) + 6H2O(l)");
//Given:
T=298;//Temperature[k]
R=8.314;//Universal gas constant[J/K/mol]
S=182.45;//standard entropy change at 298K [J/K]
U=-2808;//change in internal energy at 298K[KJ/mol]
//reaction is taking place in bomb calorimeter so no volume change 
//therefore U=Q at constant volume

//To find the energy change that can be extracted as heat and work 
A=U-T*S*0.001;//Energy extracted as heat[KJ/mol]
Wmax=A;//work done [KJ/mol]
dn=6-6;//change in no. of moles
H=U+dn*R*T;//Change in enthalpy of the bomb calorimeter[KJ]
printf("The energy change that can be extracted as heat is %f KJ/mol", A);
printf("\nThe energy change that can be extracted as work is %f KJ/mol", -A);
printf("\nThe change in enthalpy of bomb calorimeter is %f KJ/mol",H);

