clear;
clc;

// Example: 7.5
// Page: 269

printf("Example: 7.5 - Page: 269\n\n");

// Solution

//*****Data******//
P1 = 100;// [kPa]
T1 = 250;// [K]
Q = 0.1;// [cubic m/s]
P2 = 500;// [kPa]
M = 44;// [g/mol]
R = 8.314;// [J/mol K]
//****************//

// Solution (a)
// Work done by reversible adiabatic compression, gama = 1.4;
gama = 1.4;
T2 = T1*(P2/P1)^((gama - 1)/gama);// [K]
Wad = (gama*R/(gama - 1))*(T1 - T2);// [J/mol]
Wad = Wad/M;// [J/g]
printf("Work done by reversible adiabatic compression when gama = 1.4 is %.2f J/g\n",Wad);

// Solution (b)
// Work done by isothermal compression:
Wiso = - (R*T1)*log(P2/P1);// [J/mol]
Wiso = Wiso/M;// [J/g]
printf("Work done by isothermal compression is %.2f J/g\n",Wiso);

// Solution (c)
// Work done in single stage compression, gama = 1.3:
gama = 1.3;
V1 = Q;// [cubic m]
Wsingle_stage = (gama*P1*V1/(gama - 1))*(1-(P2/P1)^((gama - 1)/gama));// [kW]
printf("Work done in single stage compression is %.2f kW",Wsingle_stage);