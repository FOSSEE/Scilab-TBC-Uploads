clear;
clc;

//Example - 4.17
//Page number - 170
printf("Example - 4.17 and Page number - 170\n\n");

//Given
P_1 = 1;//[bar] - Initial pressure
T_1 = 150 + 273.15;//[K] - Initial temperature
V_2 = 0.28;//[m^(3)/kg] - Final specific volume
T_2 = T_1;//[K] - Isothermal process
R = 8.314;//[J/mol-K] - Universal gas constant

// At 1 bar and 150 C, from steam table
S_1 = 7.6134;//[kJ/kg-K]
H_1 = 2776.4;//[kJ/kg]

// At 150 C saturated
V_liq = 0.001091;//[m^(3)/kg]
V_vap = 0.3928;//[m^(3)/kg]
H_liq = 632.2;//[kJ/kg]
H_vap = 2746.5;//[kJ/kg]
S_liq = 1.8418;//[kJ/kg-K]
S_vap = 6.8379;//[kJ/kg-K]

// The dryness factor of exit steam can be determined as
x = (V_2 - V_liq)/(V_vap - V_liq);
S_2 = S_liq*(1-x) + x*S_vap;//[kJ/kg-K] -Entropy 
H_2 = H_liq*(1-x) + x*H_vap;//[kJ/kg] -Enthalpy 
delta_H = H_2 - H_1;//[kJ/kg] - Enthalpy change
delta_S = S_2 - S_1;//[kJ/kg]

// Since the compression is reversible
q = T_1*delta_S;//[kJ/kg] - Heat transfer
// From first law  q - W = delta_H
W = q - delta_H;//[kJ/kg]

printf(" (1).The amount of heat transfer (when fluid is steam) is %f kJ/kg\n",q)
printf("     The amount of work transfer (when fluid is steam) is %f kJ/kg\n\n",W)

//(2)
V_2 = V_2*(28.84/1000);//[m^(3)/mol] - Molar volume at exit
// Pressure at exit is given by 
P_2 = ((R*T_2)/V_2);//[N/m^(2)]
P_2 = P_2*10^(-5);//[bar]

// Entropy change is given by, delta_S_2 = Cp*log(T_2/T_1) - R*log(P_2/P_1), but since T_1 = T_2, therfore
delta_S_2 = - R*log(P_2/P_1);//[J/mol-K]

q_2 = T_1*delta_S_2;//[J/mol] - Heat change
q_2 = q_2/28.84;//[kJ/kg]

// Enthalpy change is given by,  delta_H_2 = Cp*(T_2 - T_1)  = 0 (as T_1 = T_2)
delta_H_2 = 0;//[kJ/kg]

// From first law  q - W = delta_H, therefore
W_2 = q_2 - delta_H_2;//[kJ/kg]

printf(" (2).The amount of heat transfer (when fluid is ideal gas) is %f kJ/kg\n",q_2)
printf("     The amount of work transfer (when fluid is ideal gas) is %f kJ/kg\n",W_2)

