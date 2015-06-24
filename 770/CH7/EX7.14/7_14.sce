clear;
clc;

//Example - 7.14
//Page number - 249
printf("Example - 7.14 and Page number - 249\n\n");

//Given
T = 270;//[K]
P_1 = 381;//[kPa] - Initial pressure
P_2 = 1200;//[kPa] - Final pressure
V_liq = 1.55*10^(-3);//[m^(3)/kg] - Specific volume for saturated water in liquid phase at 270 C
Beta = 2.095*10^(-3);//[K^(-1)]

//dH = Cp*dT + [V - T*(dV/dT)_P]*dP
// dS = (Cp/T)*dT - ((dV/dT)_P)*dP
// Since isothermal conditions are maintained we get
// dH = [V - T*(dV/dT)_P]*dP = V*(1 - Beta*T)*dP
// For the liquid assuming V and Beta to remain constant during pressure change, and since temperature is constant we get
delta_H = V_liq*(1 - Beta*T)*(P_2 - P_1);//[kJ/kg]

printf("The enthalpy change is given by delta_H = %f kJ/kg\n",delta_H);

// Under isothermal conditions 
// dS = -((dV/dT)_P)*dP = -Beta*V_liq*dP
// If Beta*V is assumed to remain constant during pressure change we get
delta_S = -Beta*V_liq*(P_2-P_1);//[kJ/kg-K]

printf("The entropy change is given by delta_S = %e kJ/kg-K",delta_S);

