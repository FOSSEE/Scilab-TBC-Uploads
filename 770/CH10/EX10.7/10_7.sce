clear;
clc;

//Example - 10.7
//Page number - 341
printf("Example - 10.7 and Page number - 341\n\n");

//Given
// C = -0.067 + 30.7/T
// D = 0.0012 - 0.416/T

T = 80 + 273.15;//[K]
P = 30;//[bar]
//P = P;//[N/m^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant

// We have the relation derived in the book
// d(G/(R*T)) = (V/(R*T))dP - (H/(R*T^(2)))dT
// Writing the same equation for ideal gas and subtracting it from the above equation we get
// d(G_R/(R*T)) = (V_R/(R*T))dP - (H_R/(R*T^(2)))dT
// Therefore, H_R/(R*T^(2)) = -[del((G_R)/(R*T))/del(T)]_P

// Substituting the relation G_R/(R*T) = log(f/P), we get
// H_R/(R*T^(2)) = -[del(log(f/P))/del(T)]_P = -[del(-C*P - D*P^(2))/del(T)]_P
// or, H_R/(R*T^(2)) = P*(dC/dT) + P^(2)*dD/dT
// Note that in the above equation the partial derivative is replaced by full derivative as C and D are functions of temperature. Therfore we get
// H_R/(R*T^(2)) = (30.7*P)/T^(2) + (0.416*P^(2))/T^(2)
// H_R/R = - 30.7*P + 0.416*P^(2)

// Substituting the given conditions we get
H_R = R*(-30.7*P + 0.416*P^(2));//[J/mol]

printf(" The molar enthalpy of the gas relative to that of the ideal gas at 80 C and 30 bar pressure is, H_R = %f J/mol\n",H_R);



