// Exa 4.22
clc;
clear;
close;
// Given data
V_BE = 0.7;// in V
V_BB = 5;// in V
R_B = 100;// in kohm
R_B = R_B * 10^3;// in ohm
R_E = 2;// in kohm
R_E = R_E * 10^3;// in ohm
bita = 100;
I_B = (V_BB-V_BE)/( R_B+((1+bita)*R_E) );// in A
disp(I_B*10^3,"The value of I_B in mA is");
V_B = V_BB-(I_B*10^-3*R_B);// in V
I_C = bita*I_B;// in A
disp(I_C*10^3,"The value of I_C in mA is");
V_CC = 10;// in V
V_C = V_CC-(I_C*R_E);// in V
disp(V_C,"The voltage in V is");
disp("Transistor is in active region is valid")
