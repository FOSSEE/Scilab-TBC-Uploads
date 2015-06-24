clear;
clc;

//Example - 3.2
//Page number - 83
printf("Example - 3.2 and Page number - 83\n\n");

//Given
V_tank = 1;//[m^(3)] - Volume of the tank
V_liq = 0.05;//[m^(3)] - Volume of saturated water
V_vap = 0.95;//[m^(3)] - Volume of saturated vapour
P = 1;//[bar] - Pressure
V_liq_sat = 0.001043;//[m^(3)/kg] - Specific volume of saturated water
V_vap_sat = 1.6940;//[m^(3)/kg] - Specific volume of saturated vapour
U_liq_sat = 417.4;//[kJ/kg] - Saturated liquid internal energy
U_vap_sat = 2506.1;//[kJ/kg] - Saturated vapour internal energy
m = (V_liq/V_liq_sat) + (V_vap/V_vap_sat);//[kg] - Total mass of water
U_1 = (V_liq/V_liq_sat)*U_liq_sat + (V_vap/V_vap_sat)*U_vap_sat;//[kJ] - Total internal energy

// At final state,which is saturated vapour
V = V_tank/m;//[m^(3)/kg] - Molar volume
// From saturated steam table at 8 MPa,as reported in the book V_vap = 0.02352[m^(3)/kg] and U_vap = 2569.8[kJ/kg]
// At 9 MPa, Vv = 0.02048[m^(3)/kg] and Uv = 2557.8[kJ/kg]
// Therefore final state pressure of the system (from interpolation) is 8.954 [MPa] and internal energy of saturated vapour is 2558.35 [kJ/kg]
U_2 = m*2558.35;//[kJ] - Final total internal energy
del_Ut = U_2 - U_1;//[kJ] 
//we have, del_U = Q - W
//Here work done is zero because volume is rigid.
Q = del_Ut;//[kJ]
Q = del_Ut*10^(-3);//[MJ]
printf(" The amount of heat to be added is %f MJ", Q);

