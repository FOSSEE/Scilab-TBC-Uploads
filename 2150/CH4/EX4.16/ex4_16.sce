// Exa 4.16
clc;
clear;
close;
// Given data
bita = 50;
V_CC = 12;// in V
V_BE = 0.7;// in V
R_B = 240;// in kohm
R_B = R_B*10^3;// in ohm
I_C = 2.35 * 10^-3;// in A
R_C = 2.2;// in kohm
R_C = R_C * 10^3;// in ohm
I_BQ = (V_CC - V_BE)/R_B;// in A
disp(I_BQ*10^6,"The value of I_BQ in µA is");
I_CQ = bita*I_BQ;// in A
disp(I_CQ*10^3,"The value of I_CQ in mA is");
V_CEQ = V_CC - (I_C*R_C);// in V
disp(V_CEQ,"The value of V_CEQ in V is");
V_B = V_BE;// in V
disp(V_B,"The value of V_B in V is");
V_BC = V_B -V_CEQ;// in V
disp(V_BC,"The voltage in V is");

// Note: In the book, there is a calculation error to evaluating the value of V_CEQ. So the answer in the book is wrong
