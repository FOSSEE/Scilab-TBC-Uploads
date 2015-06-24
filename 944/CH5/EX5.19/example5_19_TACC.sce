//example 5.19

clear;
clc;

disp("CH4(g)+2O2(g)-->CO2(g)+2H2O(l)");

//Given:
S1=-242.98;//standard entropy change for the combustion reaction[J/K]
Hf1=-74.81;//Enthalpy of formation of CH4(g)[KJ/mol]
Hf2=-393.51;//Enthalpy of formation of CO2(g)[KJ/mol]
Hf3=-285.83;//Enthalpy of formation of H2O(l)[KJ/mol]
T=298;//temperature[K]

//To find the total entropy change 
H=Hf2+2*Hf3-Hf1;//Change in enthalpy of reaction[KJ]
S2=-H*1000/T;//Change in entropy of the surrounding[J/K]
Stotal=(S1+S2)*0.001;//Total entropy change 
printf("The total change in entropy is %f KJ/K",Stotal);
