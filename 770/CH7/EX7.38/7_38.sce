clear;
clc;

//Example - 7.38
//Page number - 276
printf("Example - 7.38 and Page number - 276\n\n");

//Given
T = 300 + 273.15;//[K] - Temperature
P = 9000;//[kPa] - Pressure
P_sat = 8592.7;//[kPa] - Vapour pressure of saturated water at 300 C
f_sat = 6738.9;//[kPa] - Fugacity of saturated water at 300 C
V_liq = 25.28;//[cm^(3)/mol] - Molar volume of water in liquid phase
V_liq = V_liq*10^(-6);// [m^(3)/mol]
V_vap = 391.1;//[cm^(3)/mol] - Molar volume of water in vapour phase
V_vap = V_vap*10^(-6);// [m^(3)/mol]
R = 8.314;//[J/mol*K] - Universal gas constant

// At 300 C and 9000 kPa water is a compressed liquid and its fugacity is given by
// f = f_sat*exp[V_liq*(P - P_sat)/R*T]
fugacity = f_sat*exp((V_liq*(P - P_sat)*1000)/(R*T));

printf(" The fugacity of water at 9000 kPa is %f kPa",fugacity);


