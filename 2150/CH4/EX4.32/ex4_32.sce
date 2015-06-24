// Exa 4.32
clc;
clear;
close;
// Given data
V_BB = 10;// in V
V_BE = 0;// in V
R_B = 470;// in kohm
R_B = R_B * 10^3;// in ohm 
I_B = (V_BB - V_BE)/R_B;// in A
bita = 200;
I_C = bita*I_B;// in A
V_CC = 10;// in V
R_C = 820;// in ohm
V_CE = V_CC  - (I_C*R_C);// in V
disp("Part (a) : For ideal approximation")
disp(V_CE,"The collector emitter voltage in V is");
P_D = V_CE * I_C;// in W
disp(P_D*10^3,"Power dissipation in mW is");
disp("Part (b) : For second approximation")
V_BE = 0.7;// in V
I_B = (V_BB-V_BE)/R_B;// in A
I_C = bita*I_B;// in A
V_CE = V_CC - (I_C*R_C);// in V
disp(V_CE,"The collector emitter voltage in V is");
P_D = V_CE * I_C;// in W
disp(P_D*10^3,"Power dissipation in mW is");
