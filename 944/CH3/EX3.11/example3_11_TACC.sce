//example 3.11

clear;
clc;

disp("C2H5OH(l)+3O2(g)->2CO2(g)+3H2O(l)");
//Given:
T=298;//temperature during the reaction[K]
Hw=-285.83;//standard heat of formation of liquid water [KJ/mol]
He=-277.69;//standard heat of formation of liquid ethanol[KJ/mol]
Hco2=-393.51;//standard heat of formation of carbon dioxide[KJ/mol]
Ho2=0;//standard heat of formation of oxygen gas[KJ/mol]

//to find the standard heat of reaction
H=2*Hco2+3*Hw-He-3*Ho2;//standard heat of reaction
printf("H(standard heat of reaction)=%f KJ/mol",H);
