// Exa 4.23
clc;
clear;
close;
// Given data
V_CC = 20;// in V
V_BE = 0.7;// in V
R_B = 430;// in kohm
R_B = 430 * 10^3;// in ohm
bita = 50;
R_E = 1;// in kohm
R_E = R_E * 10^3;// in ohm
R_C = 2;// in kohm
R_C = R_C * 10^3;// in ohm
I_B = (V_CC - V_BE)/(R_B +(1+bita)*R_E);// in A
disp(I_B*10^6,"The base current in µA is");
I_C = bita*I_B;// in A
disp(I_C*10^3,"The collector current in mA is");
V_CE = V_CC - I_C*(R_C+R_E);// in V
disp(V_CE,"The value of V_CE in V is");
V_C = V_CC - (I_C*R_C);// in V
disp(V_C,"The value of V_C in V is");
V_E = V_C - V_CE;// in V
disp(V_E,"The value of V_E in V is");
V_B = V_BE+V_E;// in V
disp(V_B,"The value of V_B in V is : ")
V_BC = V_B-V_C;// in V
disp(V_BC,"The value of V_BC in V is");
