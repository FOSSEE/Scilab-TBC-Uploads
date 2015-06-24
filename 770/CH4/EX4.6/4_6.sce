clear;
clc;

//Example - 4.6
//Page number - 154
printf("Example - 4.6 and Page number - 154\n\n");

//Given
m = 1000;//[g] - Mass of fluid
P_1 = 20;//[bar] - Initial pressure
P_2 = 2;//[bar] - Final ressure
T_1 = 250 + 273.15;//[K] - Initial tempearture
R = 8.314;//[J/mol*K] - Universal gas constant

// (a).
// At 20 bar and 250 C as reported in the book
V_1 = 0.11144;//[m^(3)/kg] - Specific volume
U_1 = 2679.6;//[kJ/kg] - Specific internal energy
S_1 = 6.5453;//[kJ/kg-K] - Specific entropy
S_2 = S_1;// Isentropic expansion

// At 2 bar under saturated conditions 
S_liq = 1.5301;//[kJ/kg-K]
S_vap = 7.1271;//[kJ/kg-K]
U_liq = 504.49;//[kJ/kg-K]
U_vap = 2529.5;//[kJ/kg-K]
// Therefore dryness factor can be determined as
x = (S_1 - S_liq)/(S_vap - S_liq);
U_2 = U_liq*(1 - x) + x*U_vap;//[kJ/kg] - Specific internal energy at final state
delta_U = U_2 - U_1;//[kJ/kg] - change in internal energy
W = - delta_U;// - Work done

// The final saturated temperature at 2 bar from steam table is
T_2 = 120.23;//[C]

printf(" (a).The final temperature is %f C\n",T_2);
printf("     The work done is equal to %f kJ/kg\n\n",W);

// (b).
Y = 1.4;// Index of expansion for air
Cv_0 = R/(Y-1);//[J/mol*K] - Specific heat capacity at constant volume
// Ideal gas under isentropic expansion    P_1^(1-Y)*T_1^(Y) =P_2^(1-Y)*T_2^(Y)
T_2_prime = T_1*(P_1/P_2)^((1-Y)/Y);//[K] - Final temperature
delta_U_prime = Cv_0*(T_2_prime - T_1);//[J/mol] - change in internal energy

// Number of moles is given by
n = m/28.84;//[mol]
delta_U_prime = delta_U_prime*n*10^(-3);//[kJ]
W_prime = - delta_U_prime;// Work done

printf(" (b).The final temperature is %f C\n",T_2_prime);
printf("     The work done is equal to %f kJ/kg\n",W_prime);


