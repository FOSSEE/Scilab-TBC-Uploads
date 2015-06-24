clear;
clc;

// Example: 6.3
// Page: 206

printf("Example: 6.3 - Page: 206\n\n");

// Solution

// *****Data******//
P1 = 361.3;// [kPa]
T1 = 140 + 273;// [K]
P2 = 617.8;// [kPa]
T2 = 160 + 273;// [K]
T = 150 + 273;// [K]
Vg = 0.3917;// [cubic m/kg]
//****************//

// From Eqn. 6.56
// dP/dT = deltaH/(T*(Vg - V1)) = deltaH/(T*Vg)
deltaP = P2 - P1;// [kPa]
deltaT = T2 - T1;// [K]
deltaH = T*Vg*deltaP/deltaT;// [kJ/kg]
printf("Enthalpy of Vaporisation is %d kJ/kg\n",round(deltaH));