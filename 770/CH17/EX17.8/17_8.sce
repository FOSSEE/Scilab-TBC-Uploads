clear;
clc;

//Example - 17.8
//Page number - 606
printf("Example - 17.8 and Page number - 606\n\n");

// Given
// P*P +q*Q - r*R + s*S
// Let Cp_P = p, Cp_Q = Q, Cp_R = R and Cp_S = S

//(1)
// When reactants are heated from 10 to 25 C,reaction takes place at 25 C and products are raised from 25 C to 1500 K the heat exchange is given by
T_1 = 10 + 273.15;//[K]
T_2 = 25 + 273.15;//[K]
T_3 = 1500;//[K]
// Q = integrate('(p*Cp_P + q*Cp_q)*dT','T',T_1,T_2) + delta_H_rkn_298 + integrate('(r*Cp_R + s*Cp_S)*dT','T'T_2,T_3);
printf(" (1).The expression for the heat exchange with the surrounding by the first path is given below\n");
printf("     Q = integrate((p*Cp_P + q*Cp_q)*dT,T,T_1,T_2) + delta_H_rkn_298 + integrate((r*Cp_R + s*Cp_S)*dT,TT_2,T_3);\n\n")

//(2)
// When reactants are heated from 10 C to 1500 K,reaction take place at 1500 K the heat exchange is given by
// Q = integrate('(p*Cp_P + q*Cp_q)*dT','T',T_1,T_3) + delta_H_rkn_1500
// where, delta_H_rkn_1500 = delta_H_rkn_298 + integrate('(r*Cp_R + s*Cp_S - p*Cp_P - q*Cp_q)*dT','T'T_2,T_3);
// Therefore
// Q = integrate('(p*Cp_P + q*Cp_q)*dT','T',T_1,T_3) + delta_H_rkn_298 + integrate('(r*Cp_R + s*Cp_S - p*Cp_P - q*Cp_q)*dT','T'T_2,T_3);
// Q = integrate('(p*Cp_P + q*Cp_q)*dT','T',T_1,T_2) + delta_H_rkn_298 + integrate('(r*Cp_R + s*Cp_S)*dT','T'T_2,T_3);

// which is same as in method (1). The total enthalpy change between two fixed ponts is a function only of state and not the path taken.

printf(" (2).The expression for the heat exchange with the surrounding by the second path is given below\n");
printf("     Q = integrate((p*Cp_P + q*Cp_q)*dT,T,T_1,T_2) + delta_H_rkn_298 + integrate((r*Cp_R + s*Cp_S)*dT,TT_2,T_3);\n\n")



