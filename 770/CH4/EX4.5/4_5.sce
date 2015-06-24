clear;
clc;

//Example - 4.5
//Page number - 153
printf(" Example - 4.5 and Page number - 153\n\n");

// Given
m = 1000;//[g] - Mass of fluid
P_1 = 20;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
P_2 = 2;//[bar] - Final pressure
P_2 = P_2*10^(5);//Pa
T_1 = 250 + 273.15;//[K] - Initial temperature
n = 1.25;
R = 8.314;//[J/mol*-] - Universal gas constant
Y = 1.4;// Index of expansion
Cv_0 = R/(Y- 1);//[J/mol-K]
Cp_0 = R + Cv_0;//[J/mol-K]

//(a)
// For steam at 20 bar and 250 C, from steam table as reported in the book
V_1 = 0.11144;//[m^(3)/kg]
U_1 = 2679.6;//[kJ/kg]
S_1 = 6.5453;//[kJ/kg-K]
// P_1*V_1^(n) = P_2*V_2^(n)
V_2 = ((P_1*V_1^(n))/P_2)^(1/n);//[m^(3)/kg]

// At 2 bar under saturated conditions,from steam table as reported in the book
V_liq = 0.001061;//[m^(3)/kg]
V_vap = 0.8857;//[m^(3)/kg]
x = (V_2 - V_liq)/(V_vap - V_liq);// Dryness fraction
T_sat = 120.23;//[C] - The final temperature
U_liq  = 504.49;//[kJ/kg] - Internal energy of saturate liquid
U_vap = 2529.5;//[kJ/kg] - Internal energy of saturate vapour
// Therefore, internal energy at state 2 is given by
U_2 = U_liq*(1 - x) + x*U_vap;//[kJ/kg]

// Work transfer is given by
W = (P_1*V_1 - P_2*V_2)/(n - 1);//[J/kg]
W = W*10^(-3);//[kJ/kg]
delta_U = U_2 - U_1;//[kJ/kg]

// From first law, q - W = delta_U
q = W + delta_U;//[kJ/kg]

// At final state (2 bar saturated), as reported in the book
S_liq = 1.5301;//[kJ/kg-K] - Entropy of saturated liquid
S_vap = 7.1271;//[kJ/kg-K] - Entropy of saturated vapour
// Therefore, entropy at state 2 is given by
S_2 = S_liq*(1 - x) + x*S_vap;//[kJ/kg-K]
delta_S = S_2 - S_1;//[kJ/kg-K]

printf(" (a).The final temperature is %f C\n",T_sat);
printf("     The work done is equal to %f kJ/kg\n",W);
printf("     The heat change is equal to %f kJ/kg\n",q);
printf("     The entropy change is equal to %f kJ/kg-K\n\n",delta_S);

//(b)
// P*V^(n) = constant
// Since the gas behaves as ideal we can write
// P_1^(1-n)*T_1^(n) = P_2^(1-n)*T_2^(n)
T_2 = T_1*(P_1/P_2)^((1-n)/n);//[K]

// Molar volume is given by
V_2_1 = (R*T_1)/P_1;//[m^(3)/mol] - At state 1
V_2_2 = (R*T_2)/P_2;//[m^(3)/mol] - At state 2

// Work transfer is given by
w_2 = ((P_1*V_2_1) - (P_2*V_2_2))/(n-1);//[J/mol]
Mol_wt_air = 0.21*32 + 0.79*28;//[g/mol] - Molecular weight of air
n_mole = m/Mol_wt_air;
// Total work transfer is given by
W_2 = w_2*n_mole*10^(-3);//[kJ]
// Internal energy change is given by
delta_U = n_mole*Cv_0*(T_2 - T_1)*10^(-3);//[kJ]

// Heat transfer is given by
Q = W_2 + delta_U;//[kJ]

// Entropy change is given by
delta_S_2 = Cp_0*log(T_2/T_1) - R*log(P_2/P_1);//[J/mol-K]
delta_S_2 = delta_S_2*n_mole;//[J/mol]

printf(" (b).The final temperature is %f C\n",T_2);
printf("     The work done is equal to %f kJ/kg\n",W_2);
printf("     The total heat change is equal to %f kJ\n",Q);
printf("     The entropy change is equal to %f kJ/kg-K\n\n",delta_S_2);

