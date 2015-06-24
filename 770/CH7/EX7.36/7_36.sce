clear;
clc;

//Example - 7.36
//Page number - 270
printf("Example - 7.36 and Page number - 270\n\n");

//Given
T_1 = 100 + 273.15;//[K]
P_1 = 1.01325;//[bar]
T_2 = 98 + 273.15;//[K]
P_2 = 0.943;//[bar]
V_vap = 1.789;//[m^(3)] - Volume in vapour phase
vessel_vol = 1.673;//[m^(3)] - Volume of the vessel
R = 8.314;//[J/mol*K] - Universal gas constant

// The total volume remains constant as the walls are rigid. At 98 C we get
// vessel_vol = V_liq*(1 - x) + V_vap*x
// Since V_liq is negligible as compared to V_vap, therefore
x = vessel_vol/V_vap;

// The quantity is given by x = m_vap/(m_liq + m_vap)
// Since (m_liq + m_vap) = 1, therefore at 98 C saturated vapour is x and saturated liquid is (1 - x)
m_vap = x;//[kg] - Mass of saturated vapour
m_liq = (1 - x);//[kg] - Mass of saturated liquid

printf(" The amount of vapour condensed is %f kg\n",m_liq);

// The clapeyron equation is given by
// log(P_2_sat/P_1_sat) = (-delta H_LV/R)*(1/T_2 - 1/T_1)

// Solving the above equation
delta_H = -(log(P_2/P_1)/(1/T_2 - 1/T_1))*R;
delta_H = delta_H/18.015;//[kJ/kg]

printf(" The latent heat of vaporization is %f kJ/kg\n",delta_H);

