clear;
clc;

// Example: 11.5
// Page: 462

printf("Example: 11.5 - Page: 462\n\n");

// Solution

//*****Data******//
delta_Tb = 2.3;// [K]
w1 = 100;// [g]
M1 = 78;// [g/mol]
w2 = 13.86;// [g]
M2 = 154;// [g/mol]
Tb = 353.1;// [K]
R = 8.314;// [J/mol K]
//****************//

// Molality:
m = w2*1000/(w1*M2);// [mol/kg]
// Molal Elevation Constant:
Kb = delta_Tb/m;// [K kg/mol]
// Molar Latent Heat of Vaporisation:
Lv = R*Tb^2*M1/(1000*Kb);// [J/mol]
printf("Molar Latent Heat of Vaporisation is %d J/mol",Lv);