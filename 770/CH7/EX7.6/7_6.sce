clear;
clc;

//Example - 7.6
//Page number - 241
printf("Example - 7.6 and Page number - 241\n\n");

//Given
P_1 = 1;//[MPa] - Initial pressure
P_2 = 1.4;//[MPa] - Final pressure

//We know that
// dS = (Cp/T)*dT - (dV/dT)*dP
// Along an isothermal path,integration of above expression between states 1 and 2 yields
// S_2 - S_1 = - integral((dV/dT)*dP)_P
// An estimate can be made by assuming that (dV/dT)_P  remains constant over the range of pressure from P_1 to P_2 and evaluating the derivative at average pressure of 1.2 MPa
P_avg = P_2;
// S_2 - S_1 = -integral((dV/dT)*dP)_Pavg*(P_2 - P_1)
// (dV/dT)_P=1.2MPa = ((V_350 - V_250)/(350 - 250))
dV_dT = (0.2345 - 0.19234)/100;//[m^(3)/kg-K]
//Therefore
delta_S = -dV_dT*(P_2 - P_1)*1000;//[kJ/kg-K] - Entropy change

printf("The change in entropy is given by\n S_2-S_1 = %f kJ/kg-K",delta_S);

//Let us compare this tabulated values. At 1MPA and 300 C, S_1 = 7.1229 kJ/kg-K. At 1.4 MPa and 300 C, S_2 = 6.9534 kJ/kg-K. 
//Therefore  S_2 - S_1 = -0.1695 kJ/kg-K

