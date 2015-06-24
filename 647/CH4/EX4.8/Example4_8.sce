clear;
clc;

// Example: 4.8
// Page: 126

printf("Example: 4.8 - Page: 126\n\n");

// Solution

//*****Data*****//
Cp_CO2 = 54.56;// [kJ/mol K]
Cp_O2 = 35.20;// [kJ/mol K]
Cp_steam = 43.38;// [kJ/mol K]
Cp_N2 = 33.32;// [kJ/mol K]
// 2C2H6(g) + 7O2(g) = 4CO2(g) + 6H2O(g)
deltaH_273 = -1560000;// [kJ/kmol]
//************//

// Since the air is 25% in excess of the amount required,the combustion may be written as:
// C2H6(g) + (7/2)O2(g) = 2CO2(g) + 3H2O(g)
// 25% excess air is supplied.
// Since the air contains N2 = 79% and O2 = 21%
// C2H6(g) + 3.5O2(g) + 0.25*3.5O2(g) + (4.375*(79/21))N2 = 2CO2 + 3H2O + 0.875O2 + 16.46N2 .................. (A)
// Considering the reaction (A),
// Amount of O2:
O2 = 3.5 + 3.5*0.25;// [mol]
// Amount of N2 required:
N2 = 4.375*(79/21);// [mol]
// Let the initial temperature of ethane and air be 0 OC and the temperature of products of combustion be T OC
// Since heat librated by combustion = heat accumulated by combustion products
Q = -deltaH_273;// [kJ/mol K]
T = Q/(2*Cp_CO2 + 3*Cp_steam + 0.875*Cp_O2 + N2*Cp_N2);// [OC]
printf("The theoretical temperature of combustion is %d degree Celsius",T);