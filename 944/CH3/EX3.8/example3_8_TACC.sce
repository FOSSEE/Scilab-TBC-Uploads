//example 3.8

clear;
clc;

disp("i.C(s) + O2(g) -> CO2(g)");
//Given:
H1=-393.5;//change in enthalpy [KJ/mol]
T1=298;//temperature [K]
n1=0;//change in no. of moles in reaction moving in forward direction
R=0.008314;//universal gas constant [KJ/K/mol]

//to find the change in internal energy (U) of given reaction
U1=H1-n1*R*T1;//change in internal energy [KJ]
printf("The change in internal energy is %f KJ/mol",U1);

disp("ii.C(s) + 0.5O2 -> CO(g)");
//Given:
H2=-110.5;//change in enthalpy[KJ/mol]
T2=298;//temperature[K]
n2=1-0.5;//change in no. of moles in reaction moving in forward direction
R=0.008314;//universal gas constant [KJ/K/mol]

//to find the change in internal energy (U) of given reaction
U2=H2-n2*R*T2;//change in internal energy [KJ]
printf("The change in internal energy is %f KJ/mol",U2);

