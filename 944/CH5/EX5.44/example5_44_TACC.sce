//example 5.44

clear;
clc;

disp("The values for reaction that goes on within the cadmium cell");
//Given:
n=2;//no. of moles
E=1.01463;//standard cadmium cell potential[volts]
d=-5*10^-5;//i.e d=dE/dT[V/K]
F=96500;//[coulomb/mol]
T=298;//Temperature [K]

//To find the values of dG,dS and dH
dG=-n*E*F;//Change in Gibb's free energy[J]
dS=n*F*d;//Change in entropy [J/K]
dH=dG+T*dS;//change in enthalpy[J]
printf(" dG=%f J",dG);
printf("\n dS=%f J/K",dS);
printf("\n dH=%f J",dH);









