clear;
clc;

// Example: 8.10
// Page: 313

printf("Example: 8.10 - Page: 313\n\n");

// Solution

//*****Data******//
Q = 5;// [tons]
T1 = 253;// [Temperature of the working fluid leaving the evaporator, K]
T2 = 303;// [Temperature of the working fluid leaving the evaporator, K]
T3 = 303;// [K]
Pressure_Ratio = 4;
C = 1.008;// [kJ/kg]
gama = 1.4;
//**************//

// Solution (a)
T2 = T1*((Pressure_Ratio)^((gama - 1)/gama));// [K]
T2 = T1*(Pressure_Ratio)^((gama - 1)/gama);// [K]
T4 = T3/((Pressure_Ratio)^((gama - 1)/gama));// [K]
COP = T1/(T2 - T1);
printf("COP of Air Refrigeration System is %.2f\n",COP);

// Solution (b)
mdot = Q*12660/(C*(T1 - T4));// [kg/h]
printf("Mass flow rate of the refrigerant is %.2f kg/h\n",mdot);

// Solution (c)
Wcompression = mdot*C*(T2 - T3);// [kJ/h]
printf("The work of Compression is %.2f kW\n",Wcompression/3600);

// Solution (d)
Wexpansion = mdot*C*(T1 - T4);// [kJ/h]
printf("The work of expansion is %.2f kW\n",Wexpansion/3600);

// Solution (e)
Wnet = Wcompression - Wexpansion;// [kJ/h]
printf("Net work of the system is %.2f kW\n",Wnet/3600);