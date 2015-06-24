//example 5.21

clear;
clc;

disp("CH4(g)+2O2(g)-->CO2(g)+2H2O(l)");
//Given:
S=-242.98;//standard entropy change for reaction [J/K]
T=298;//temperature[K]
Gf1=-50.72;//standard Gibbs free energy of formation for CH4(g)[KJ/mol]
Gf2=-394.36;//standard Gibbs free energy of formation for CO2(g)[KJ/mol]
Gf3=-237.13;//standard Gibbs free energy of formation for H2O(l)[KJ/mol]


//To find the standard enthalpy of reaction 
G=Gf2+2*Gf3-Gf1;//Standard Gibbs free energy for reaction[KJ/mol]
H=G+T*S*0.001;//Standard enthalpy of reaction [KJ]
printf("The standard enthalpy of reaction is %f KJ",H);






