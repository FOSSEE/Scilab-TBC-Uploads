clear;
clc;

//Example - 7.16
//Page number - 250
printf("Example - 7.16 and Page number - 250\n\n");

//Given
T_1 = 25 + 273.15;//[C] - Initial tempetaure
T_2 = 50 + 273.15;//[C] - Final temperature
P_1 = 1;//[bar] - Initial pressure
P_2 = 1000;//[bar] - Final pressure

Cp_T1_P1 = 75.305;//[J/mol-K]
Cp_T2_P1 = 75.314;//[J/mol-K]
V_T1_P1 = 18.071;//[cm^(3)/mol]
V_T1_P2 = 18.012;//[cm^(3)/mol]
V_T2_P1 = 18.234;//[cm^(3)/mol]
V_T2_P2 = 18.174;//[cm^(3)/mol]
Beta_T1_P1 = 256*10^(-6);//[K^(-1)]
Beta_T1_P2 = 366*10^(-6);//[K^(-1)]
Beta_T2_P1 = 458*10^(-6);//[K^(-1)]
Beta_T2_P2 = 568*10^(-6);//[K^(-1)]

// The entropy change is given by
// dS = (Cp/T)*dT - ((dV/dT)_P)*dP
// The mean Cp between 25 and 50 C is 
Cp_mean = (Cp_T1_P1 + Cp_T1_P1)/2;//[J/mol-K]


// (dV/dT)_P=1bar = (V_T2_P1 - V_T1_P1)/(50 - 25)
dV_dT_P1 = ((V_T2_P1 - V_T1_P1)/(50 - 25))*10^(-6);//[m^(-3)/mol-K]
dV_dT_P2 = ((V_T2_P2 - V_T1_P2)/(50 - 25))*10^(-6);//[m^(-3)/mol-K]
// The mean value of (dV/dT)_P between 1 and 1000 bar is
dV_dT_mean = (dV_dT_P1 + dV_dT_P2)/2;//[m^(-3)/mol-K]
delta_S = Cp_mean*log(T_2/T_1) - dV_dT_mean*(P_2 - P_1)*10^(5);//[J/mol-K]

printf(" The value of entropy change is given by,  delta_S = %f J/mol-K\n",delta_S);

// Now let us determine the enthalpy change. We know that
// dH = Cp*dT + [V - T*(dV/dT)_P]*dP
// [V - T*(dV/dT)_P] = (V - T*V*Beta) = val (say)
// At state 1
val_1 = ((V_T1_P1)*10^(-6))*(1 - (T_1)*(Beta_T1_P1));//[m^(3)/mol]
// At state 2
val_2 = ((V_T2_P2)*10^(-6))*(1 - (T_2)*(Beta_T2_P2));//[m^(3)/mol]
val_mean = (val_1 + val_2)/2;//[m^(3)/mol]

delta_H = Cp_mean*(T_2 - T_1) + val_mean*(P_2-P_1)*10^(5);//[J/mol]

printf(" The value of enthalpy change is given by,  delta_H = %f J/mol",delta_H);

