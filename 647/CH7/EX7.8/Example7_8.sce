clear;
clc;

// Example: 7.8
// Page: 279

printf("Example: 7.8 - Page: 279\n\n");

// Solution

//*****Data******//
P1 = 500;// [kPa]
T1 = 623;// [K]
mdot = 12;// [kg/s]
P2 = 500;// [kPa]
T2 = 523;// [K]
Qdot = -120;// [kW]
H1 = 3168;// [kJ/kg]
H2 = 2976;// [kJ/kg]
//************//

Q = Qdot/mdot;// [kJ/kg]
// By energy balance:
// (deltaU^2/2) + g*deltaZ + deltaH = Q - Ws
// Considering negligible change in P.E., deltaZ = 0 & Ws = 0.
// (U2^2 - U1^2)/2 + deltaH = Q
deltaH = H2 - H1;// [kJ/kg]
// Neglecting inlet velocity.
U2 = sqrt(2*(Q - deltaH)*1000);// [m/s]
printf("Outlrt velocity is %.1f m/s\n",U2);