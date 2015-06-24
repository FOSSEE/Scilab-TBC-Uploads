//example 5.17

clear;
clc;

disp("C3H6(g)+4.5O2(g)-->3CO2(g)+3H2O(l)");
//Given:
S=-339.23;//standard change in entropy [J/K]
T=298;//temperature[K]
Hf1=20.42;//enthalpy of formation of C3H6(g)[J]
Hf2=-393.51;//enthalpy of formation of CO2(g)[J]
Hf3=-285.83;//enthalpy of formation of H2O(l)[J]
dn=3-4.5-1;//change in no. of moles
R=8.314;//Universal gas constant[J/K/mol]

//To find the Helmholts free energy and Gibbs free energy
H=3*Hf2+3*Hf3-Hf1;//Enthalpy of the reaction[J]
U=H-dn*R*0.001*T;//Change in internal energy of the reaction[J]
A=U-T*S*0.001;//Helmholts free energy change[J]
G=A+dn*R*0.001*T;//Gibbs free energy change[J]
printf("The change in Helmholts free energy is %f J",A);
printf("\nThe change in Gibbs free energy is %f J ",G);






