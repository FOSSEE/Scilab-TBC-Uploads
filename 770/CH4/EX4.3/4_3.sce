clear;
clc;

//Example - 4.3
//Page number - 150
printf("Example - 4.3 and Page number - 150\n\n");

// Given
R = 8.314;//[J/mol*K] - Universal gas constant
// For side A
V_A = 1;//[L] - Volume
V_A = V_A*10^(-3);//[m^(3)]
T_A = 300;//[K] - Temperature
P_A = 2;//[atm] - Pressure
P_A = P_A*101325;//[Pa]

// For side B
V_B = 1;//[L] - volume
V_B = V_B*10^(-3);//[m^(3)]
T_B = 300;//[K] - Temperature
P_B = 1;//[atm] - Pressure
P_B = P_B*101325;//[Pa]

// From first law final temperature and pressure are given by (example 3.30)
// T = ((n_A*T_A) + (n_B*T_B))/(n_A + n_B)
// P = ((P_A*V_A) + (P_A*V_B))/(V_A + V_B)

// Since in this case T_A = T_B, therefore final pressure is given by
P = ((P_A*V_A) + (P_B*V_B))/(V_A + V_B);//[Pa]
P = P/101325;//[atm]

printf(" The final temperature is %f K\n",T_A);
printf(" The final pressure is %f atm\n",P);

// The number of moles of air on each side are
n_A = (P_A*V_A)/(R*T_A);//[mol]
n_B = (P_B*V_B)/(R*T_B);//[mol]

delta_S_A = -n_A*R*log((P*101325)/P_A);//[J/K] - Entropy change on side A
delta_S_B = -n_B*R*log((P*101325)/P_B);//[J/K] - Entropy change on side B
delta_S_sys = delta_S_A + delta_S_B;//[J/K] - Total entropy change of system

// Since the system is insulated there is no heat exchange with the surroundings, therefore entropy change of surrounding is zero
delta_S_surr = 0;//[J/K]
delta_S_univ = delta_S_sys + delta_S_surr;//[J/K]
printf(" The total increase in entropy is %f J/K",delta_S_univ);

// The entropy change of the system can also be writtten as
// delta_s_sys = Q/T_b + S_gen
// Since there is no heat transfer, therefore
S_gen = delta_S_univ;//[J/K]
// The process is reversible because of entropy generation due to spontaneous release of piston.

