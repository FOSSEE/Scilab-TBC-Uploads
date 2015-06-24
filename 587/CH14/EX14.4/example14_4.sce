clear;
clc;

//Example14.4[Diffusion of Hydrogen Gas into a Nickel Plate]
//Given:-
s=0.00901;//Solubility of hydrogen in nickel at 358K[kmol/m^3.bar]
P_H2=300/100;//[bar]
M_H2=2;//Molar Mass of hydrogen[kg/kmol]
//Solution:-
C_H2=s*P_H2;//[kmol/m^3]
disp("kmol/m^3",C_H2,"The molar density of hydrogen in the nickel at the interface is")
rho_H2=C_H2*M_H2;//[kg/m^3]
disp("kg/m^3",rho_H2,"Mass Density of hydrogen is")
