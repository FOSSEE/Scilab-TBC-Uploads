// Implementation of example 6.5
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

T1 = 473; //K
T2 = 293; //K
T3 = 273; //K
//let Q1 be any constant
Q1 = 1;
Q2 = Q1*T2/T1;
W = (T1 - T2)*Q1/T1;
//COP = T2/(T2 - T3) = Q'/W
Q2_ = T2/(T2 - T3) * (T1 - T2)/T1 * Q1;

MF = (Q2 + Q2_)/Q1; //multiplication factor
printf("Multiplication factor, MF = %0.2f",MF);
// end