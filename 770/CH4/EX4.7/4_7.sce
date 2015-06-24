clear;
clc;

//Example - 4.7
//Page number - 155
printf("Example - 4.7 and Page number - 155\n\n");

//Given
P_1 = 15;//[bar] - Initial pressure
P_2 = 0.15;//[bar] - Final pressure

// We know that during isentropic expansion
// W = ((P_1*V_1) - (P_2*V_2))/(Y - 1)

// At 15 bar (saturated vapour), from steam table as reported in the book
V_1 = 0.13177;//[m^(3)/kg]
U_1 = 2594.5;//[kJ/kg]
S_1 = 6.4448;//[kJ/kg-K]

// Now at state 2 (P_2 = 0.15 bar),from steam table as reported in the book
S_2 = S_1;// Isentropic expansion
S_liq = 0.7549;//[kJ/kg-K]
S_vap = 8.0085;//[kJ/kg-K]
U_liq = 225.92;//[kJ/kg]
U_vap = 2448.7;//[kJ/kg]
V_liq = 0.001014;//[m^(3)/kg]
V_vap = 10.02;//[m^(3)/kg]

// Therefore dryness factor can be calculated as
x = (S_1 - S_liq)/(S_vap - S_liq);
U_2 = U_liq*(1 - x) + x*U_vap;//[kJ/kg] - Specific internal energy at final state
delta_U = U_2 - U_1;//[kJ/kg] - change in internal energy
W = - delta_U;// - Work done

// The specific volume at the final state is
V_2 = V_liq*(1 - x) + x*V_vap;//[m^(3)/kg]

// From work done under adiabatic conditions we get
// W = ((P_1*V_1) - (P_2*V_2))/(Y - 1)
Y = (((P_1*V_1) - (P_2*V_2))/W) + 1;

printf(" The index of expansion is given by Y = %f\n",Y);

