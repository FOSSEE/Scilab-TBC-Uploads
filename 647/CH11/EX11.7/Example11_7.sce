clear;
clc;

// Example: 11.7
// Page: 465

printf("Example: 11.7 - Page: 465\n\n");

// Solution

//*****Data******//
w2 = 0.6;// [g]
w3 = 1.8;// [g]
Temp = 27 + 273;// [K]
V1 = 100;// [cubic cm]
M2 = 60;// [g/mol]
M3 = 180;// [g/mol]
R = 0.082;// [L.atm/mol.K]
//****************//

V1 = V1/1000;// [litre]
// C: Concentration per litre
C = ((w2/M2) + (w3/M3))/V1;// [mol/litre]
P = C*R*Temp;// [atm]
printf("Osmotic Pressure of the solution is %.2f atm",P);