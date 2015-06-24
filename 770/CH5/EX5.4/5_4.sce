clear;
clc;

//Example - 5.4
//Page number - 194
printf("Example - 5.4 and Page number - 194\n\n")


//Given
T_1 = 150+273.15;//[K] - Initial temperature.
m = 4.6;//[kg] - mass of water
P_1 = 1;//[MPa] - Initial pressure
Q = 11000;//[kJ] - Heat transferred to the system.
T_R = 600+273.15;//[K] - Temperature of the reservior.
T_0 = 298;//[K] - Temperature of the environment
P_0 = 100;//[kPa] - Pressure of the environment

//(1)
//The entropy change of an isothermal system undergoing an internally reversible process is given by,
delta_S_t = (Q/T_1);//[kJ] - Entropy change
delta_S = delta_S_t/m;//[kJ/kg-K] - 

//At 150 C,it has been reported in the book that, P_sat - 0.4758 kPa, V_liq = 0.001091 m^(3)/kg, U_liq = 631.68 kJ/kg, S_liq = 1.8418 kJ/kg-K, S_vap = 6.8379 kJ/kg-K
V_1 = 0.001091;//[m^(3)/kg] - initial specific volume
U_1 = 631.68;//[kJ/kg] - initial specific internal energy
S_1 = 1.8418;//[kJ/kg-K] - initial entropy
//The initial state of the water is a compressed liquid state,and S_1 is therefore equal to the entropy of the saturated liquid of the saturated liquid at the   same temperature.
S_2 = S_1 + delta_S;//[kJ/kg-K] - Final entropy

//At the final state the temperature is 150 C and S = 7.499 kJ/kg-K which is more than S_vap therefore it is superheated steam.
S_final = 7.494;//[kJ/kg-K]
//At 150 C, and 0.1 MPa: V = 1.9364 m^(3)/kg, U = 2582.8 kJ/kg, S = 7.6134 kJ/kg-K
//At 150 C, and 0.2 MPa: V = 0.9596 m^(3)/kg, U = 2576.9 kJ/kg, S = 7.2795 kJ/kg-K
U_t_1 = 2582.8;//[kJ/kg] - Internal energy
U_t_2 = 2576.9;//[kJ/kg]
V_t_1 = 1.9364;//[m^(3)/kg] - Specific volume
V_t_2 = 0.9596;//[m^(3)/kg]
S_t_1 = 7.6134;//[kJ/kg-K] - Entropy
S_t_2 = 7.2795;//[kJ/kg-K]
//The pressure at exit is given by,
P_2 = ((S_final - S_t_1)/(S_t_2 - S_t_1))*(0.2 - 0.1) + 0.1;//[Mpa] - Final pressure
//At final state
U_2 = U_t_1 + (U_t_2 - U_t_1)*((S_final - S_t_1)/(S_t_2 - S_t_1));//[kJ/kg] - Final specific internal energy
V_2 = V_t_1 + (V_t_2 - V_t_1)*((S_final - S_t_1)/(S_t_2 - S_t_1));//[m^(3)/kg] - Final specific volume

q = Q/m;//[kJ/kg] - Heat supplied per unit kg of mass.
W_rev_use = U_1 - U_2 + P_0*(V_1 - V_2) - T_0*(S_1 - S_2) + q*(1 - (T_0/T_R));//[kJ/kg] - Reversible useful work done.

//Now let us calculate the actual work done. We know q - W = delta_U, therefore
W = q - (U_2 - U_1);//[kJ/kg] - Work done
W_use = W - P_0*(V_2 - V_1);//[kJ/kg]
i = W_rev_use - W_use;//[kJ/kg] - Irreversibility
//Since the system contains 4.6 g therefore, 
W_use_new = W_use*m;//[kJ]
W_rev_use_new = W_rev_use*m;//[kJ]
I = W_rev_use_new - W_use_new;//[kJ]

printf(" (1).The useful work obtained is %f kJ\n\n",W_use_new);
printf(" (2).The reversible usefuk work done is %f kJ\n\n",W_rev_use_new);
printf(" (3).The irreversibility is %f kJ\n\n",I);
