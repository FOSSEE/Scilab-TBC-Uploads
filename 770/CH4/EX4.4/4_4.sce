clear;
clc;

//Example - 4.4
//Page number - 151
printf("Example - 4.4 and Page number - 151\n\n");

// Given
V_vessel = 0.2;//[m^(3)] - Volume of the vessel
P_1 = 10;//[bar] - Initial pressure inside the vessel
P_1 = P_1*10^(5);//[Pa]
P_2 = 3.5;//[bar] - Final pressure inside the vessel
P_2 = P_2*10^(5);//Pa
T_1 = 250 + 273.15;//[K] - Initial temperature of the vesssel
R = 8.314;//[J/mol*K] - Universal gas constant

// (a)
// At 10 bar and 250 C the steam is superheated. From steam table as reported in book we have
V_1 = 0.2327;//[m^(3)/kg] - specific volume
U_1 = 2709.9;//[kJ/kg] - specific internal energy
H_1 = 2942.6;//[kj/kg] - Specific enthalpy
S_1 = 6.9247;//[kJ/kg-K] - Specific entropy
// the quantity of steam is given by
m = V_vessel/V_1;//[kg]

// At final state 
V_2 = 0.2327;//[m^(3)/kg] - Molar volume
V_liq_2 = 0.001079;// [m^(3)/kg]
V_vap_2 = 0.5243;// [m^(3)/kg]
// Since overall volume lies between saturated liquid and saturated vapour therefore the steam is saturated and its dryness fraction at final state is given by
x = (V_2 - V_liq_2)/(V_vap_2 - V_liq_2);
// Final temperature  = T_sat (at 3 bar) from steam table
T_final = 138.88;//[C]

// At 3.5 bar saturated conditions 
S_liq = 1.7275;//[kJ/kg-K]  - Entropy of saturated liquid
S_vap = 6.9405;//[kJ/kg-K]  - Entropy of saturated vapour
U_liq = 583.95;//[kJ/kg]  - Internal energy of saturated liquid
U_vap = 2548.9;//[kJ/kg]  - Internal energy of saturated vapour
// Therefore at final state 
U_2 = U_liq*(1 - x) + x*U_vap;//[kJ/kg]
S_2 = S_liq*(1 - x) + x*S_vap;//[kJ/kg-K]
Q_1 = m*(U_2 - U_1);//[kJ]
delta_S_1 = m*(S_2 - S_1);//[kJ/kg-K]

printf(" (a).The final temperature is %f C\n",T_final);
printf("     The amount of heat transfer is %f kJ\n",Q_1);
printf("     The change of entropy is %f kJ/kg-K\n\n",delta_S_1);

// (b)
Y = 1.4;// Ratio of heat capacities for air
// (P_1*V_1)/T_1 = (P_2*V_2)/T_2   and since   V_1 = V_2
T_2 = (P_2/P_1)*T_1;//[K]

// Since the volume is fixed therefore work done (W) = 0 and from first law we get
// Q = delta_U = n*Cv_0*(T_2 - T_1)
Cv_0 = R/(Y - 1);//[J/mol-K] - Heat capacity at constant volume
Cp_0 = (Y*R)/(Y - 1);//[J/mol-K] - Heat capacity at constant pressure
n = (P_1*V_vessel)/(R*T_1);//[mol] - No. of moles
Q_2 = n*Cv_0*(T_2 - T_1);//[J] - Heat change
Q_2 = Q_2*10^(-3);//[kJ]

delta_S_2 = Cp_0*log(T_2/T_1) - R*log(P_2/P_1);//[J/mol-K]
delta_S_2 = n*delta_S_2*10^(-3);//[kJ/K]

printf(" (b).The final temperature is %f C\n",T_2);
printf("     The amount of heat transfer is %f kJ\n",Q_2);
printf("     The change of entropy is %f kJ/K\n",delta_S_2);


