// Exa 4.17
clc;
clear;
close;
// Given data
V_CC = 18;// in V
V_BE = 0.7;// in V
R_C = 3.3;// in kohm
R_C = R_C * 10^3;// in ohm
R_B = 210;// in kohm
R_B  = R_B * 10^3;// in ohm
bita = 75;
R_C = 3.3;// in kohm
R_C = R_C * 10^3;// in ohm
R_E = 510;// in ohm
I_B = (V_CC-V_BE)/( R_C+R_B+bita*(R_C+R_E) );// A
disp(round(I_B*10^6),"The value of I_B in µA is");
I_C = bita*I_B;// in A
disp(I_C*10^3,"The value of I_C in mA is : ")
V_C = V_CC - (I_C*R_C);// in V
disp(V_C,"The voltage in V is");
