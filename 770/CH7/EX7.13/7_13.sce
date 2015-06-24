clear;
clc;

//Example - 7.13
//Page number - 248
printf("Example - 7.13 and Page number - 248\n\n");

//Given
T = 45+273.15;//[K]
P_1 = 10;//[kPa] - Initial pressure
P_2 = 8600;//[kPa] - Final pressure
V = 1010;//[cm^(3)/kg] - Specific volume for saturated liquid water at 45 C
V = V*10^(-6);//[m^(3)/kg]
// Beta = (1/V)*(dV/dT)_P
Beta = 4.25*10^(-4);//[k^(-1)]
Cp = 4.178;//[kJ/kg-K] - Specific heat at constant pressure
eff = 0.75;// Efficiency of the pump

//(1)
//when efficiency of the pump is 100% ,  W = -delta_Hs
// Now delta_H = T*dS + V*dP, therefore under isentropic conditions, dH = V*dP
// Since the fluid is liquid, therefore the specific volume can be taken to be constant and integrating the above equaton we get
// delta_Hs = V*dP
delta_Hs = V*(P_2 - P_1);//[kJ/kg]

//Actual pumps are not isentropic and therefore not 100% efficient. Therefore actual work done by the pump is given by
W = -delta_Hs/eff;//[kJ/kg]

printf(" (1).The work done by the pump is %f kJ/kg\n",W);

//(2)
// We know that dH = Cp*dT + (1 - Beta*T)*V*dP
// Beta and V are weak functions of pressure in the case of liquids.
// Integrating the above equation we get
// delta_H = Cp*delta_T + (1 - Beta*T)*V*(delta_P)
// Now from energy balance delta_H = q - W . But q = 0. Therefore,
delta_H = -W;//[kJ/kg]
// Solving for delta_T
delta_T = (delta_H - (1 - Beta*T)*V*(P_2-P_1))/Cp;

printf(" (2).The temperature of water change by, delta_T = %f K\n",delta_T);

//(3)
T_1 = T;//[K]
T_2 = T + delta_T;//[K]
// dS = (Cp/T)*dT - Beta*V*dP
// Beta and V are weak functions of pressure in the case of liquids. Integrating the above equation we get
delta_S = Cp*log(T_2/T_1) - Beta*V*(P_2-P_1);//[kJ/kg-K]

printf(" (3).The entropy change of water is given by delta_S = %f kJ/kg-K",delta_S);












