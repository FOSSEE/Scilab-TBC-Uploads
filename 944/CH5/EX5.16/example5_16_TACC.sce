//example 5.16

clear;
clc;

disp("C8H18(g)+12.5O2(g)-->8CO2(g)+9H2O(l)");
//Given:
T=298;//temperature[K]
S=421.5;//change in entropy[J/K]
H=-5109000;//Heat of reaction[J]
R=8.314;//Universal gas constant[J/K/mol]
dn=8-(1+12.5);//change in no. of moles


//To find the helmholts free energy and Gibbs free energy
U=H;//[J]
A=U-T*S;//Change in helmholts free energy[J]
G=A+dn*R*T;//Change in Gibbs free energy[J]
printf("The change in Helmholts free energy is %f J",A);
printf("\nThe change in Gibbs free energy is %f J",G);