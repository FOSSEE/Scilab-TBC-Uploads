clear;
clc;

// Example: 7.11
// Page: 281

printf("Example: 7.11 - Page: 281\n\n");

// Solution

//*****Data******//
P1 = 100;// [kPa]
T1 = 200;// [OC]
U1 = 190;// [m/s]
A1 = 2000/10^4;// [square m]
U2 = 70;// [m/s]
P2 = 200;// [kPa]
Qdot = 100;// [kW]
V1 = 2.172;// [cubic m/kg]
H1 = 2875.3;// [kJ/kg]
//***************//

// Solution (a)
mdot = U1*A1/V1;// [kg/s]
printf("Mass flow rate of the steam is %.2f kg/s\n",mdot);

// Solution (b)
// Amount of heat transferred to the surrounding per unit steam:
Q = Qdot/mdot;// [kJ/kg]
// The Enthalpy at the diffuser outlet can be estimated as:
H2 = Q + H1 + (U1^2 - U2^2)/2;// [kJ/kg]
// From the steam table:
T2 = 393.38;// [K]
V2 = 1.123;// [cubic m/kg]
printf("The temperature of the steam leaving the outlet is %.2f K\n",T2);

// Solution (c)
A2 = V2*mdot/U2;// [square m]
printf("Area of diffuser outlet is %.2f square m\n",A2);