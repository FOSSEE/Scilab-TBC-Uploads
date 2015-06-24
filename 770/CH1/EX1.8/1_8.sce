clear;
clc;

//Example - 1.8
//Page number - 24
printf("Example - 1.8 and Page number - 24\n\n");

// Given
V = 10;// [m^(3)] - volume of vessel
P_1 = 1;// [bar] - initial pressure
V_liq_sat = 0.05;// [m^(3)] - saturated liquid volume
V_gas_sat = 9.95;// [m^(3)] - saturated vapour volume

//At 1 bar pressure
V_liq_1 = 0.001043;// [m^(3/kg)] - specific saturated liquid volume
U_liq_1 = 417.33;// [kJ/kg] - specific internal energy
V_gas_1 = 1.69400;// [m^(3/kg)] - specific saturated vapour volume
U_gas_1 = 2506.06;// [kJ/kg]

M_liq_1 = V_liq_sat/V_liq_1;// [kg] - mass of saturated liqid
M_gas_1 = V_gas_sat/V_gas_1;// [kg] - mass of saturated vapour
M = (M_liq_1+M_gas_1);// [kg] - total mass
U_1t = (M_liq_1*U_liq_1)+(M_gas_1*U_gas_1);// [kJ] - initial internal energy
V_gas_2 = (V/M);//[m^(3/kg)]

//from steam table at 10 bar pressure as reported in the book
V_vap_2 = 0.19444;// [m^(3/kg)]
U_vap_2 = 2583.64;// [kJ/kg]

//from steam table at 11 bar pressure as reported in the book
V_vap_3 = 0.17753;//[m^(3/kg)]
U_vap_3 = 2586.40;//[kJ/kg]

//Now computing pressure when molar volume of saturated vapour=Vg_2
//By interpolation (P2-10)/(11-10)=(Vg_2-Vv_2)/(Vv_3-Vv_2)
P_2 = (((V_gas_2 - V_vap_2)/(V_vap_3 - V_vap_2)*1)+10);// [bar] - final pressure

//By interpolation calculating internal energy at state 2
//(P2-10)/(11-10)=(U2-Uv_2)/(Uv_3-Uv_2)
U_2 = (((P_2-10)/(11-10))*(U_vap_3 - U_vap_2))+U_vap_2;//[kJ/kg]
U_2t = U_2*M;//[kJ]
H = U_2t - U_1t;//[kJ] - Heat supplied
H = H/1000;//[MJ]

printf(" Total heat supplied is %f MJ',H);
// since volume is constant,no work is done by the system and heat supplied is used in increasing the internal energy of the system.

