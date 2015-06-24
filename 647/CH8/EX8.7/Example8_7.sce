clear;
clc;

// Example: 8.7
// Page: 304

printf("Example: 8.7 - Page: 304\n\n");

// Solution

//*****Data******//
P1 = 0.18;// [MPa]
T1 = -10 + 273;// [K]
mdot = 0.06;// [kg/s]
P2 = 1;// [MPa]
T2 = 45 + 273;// [K]
T = 273 + 29;// [K]
P = 0.75;// [MPa]
H1 = 245.16;// [Enthalpy of superheated vapour at -10 OC & 0.18 MPa, kJ/kg]
H2 = 277.2;// [Enthalpy of superheated vapour at 45 OC & 1 MPa, kJ/kg]
H3 = 92.22;// [Enthalpy of saturated liquid at 29 OC & 0.75 MPa, kJ/kg]
H4 = H3;// [kJ/kg]
//*************//

// Solution (a)
Ql = mdot*(H1 - H4);// [kW]
printf("Amount of heat removed from cold space is %.2f kW\n",Ql);

// Solution (b)
Wnet = mdot*(H2 - H1);// [kW]
printf("THe power input required is %.2f kW\n",Wnet);

// Solution (c)
COP = Ql/Wnet;
printf("COP of refrigeration of cycle is %.2f\n",COP);