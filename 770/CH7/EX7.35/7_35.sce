clear;
clc;

//Example - 7.35
//Page number - 269
printf("Example - 7.35 and Page number - 269\n\n");

//Given
T = 100 + 273.15;//[K]
// (dT/dP)_sat = (1/27.12) K/mm
dT_dP = (1/27.12);//[K/mm]
dT_dP = dT_dP*(760/101325);//[K/Pa]

// The clapeyron equation is given by
// (dP/dT)_sat = (-delta H_LV)/(T*delta V_LV)
// delta H_LV = T*delta V_LV*(dP/dT)_sat

// (dP/dT)_sat = 1/(dT/dP)_sat
dP_dT = 1/dT_dP;//[Pa/K]

// From saturated steam table at 100 C
V_vap = 1.6729;//[m^(3)/kg]
V_liq = 0.001044;//[m^(3)/kg]
delta_V = V_vap - V_liq;//[m^(3)/kg]

// Therefore delta_H_LV is given by
delta_H_LV = T*delta_V*(dP_dT);//[J/kg]
delta_H_LV = delta_H_LV*10^(-3);//[kJ/kg]

printf(" The heat of vaporization of water is %f kJ/kg\n",delta_H_LV);

