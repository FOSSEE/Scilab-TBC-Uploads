// Exa 4.33
clc;
clear;
close;
// Given data
V_BE = 0;// in V
V_BB = 12;// in V
R_B = 680;// in kohm
R_B = R_B * 10^3;// in ohm
I_B = (V_BB-V_BE)/R_B;// in A
beta_dc = 175;
I_C = beta_dc*I_B;// in A
V_CC = 12;// in V
R_C = 1.5;// in kohm
R_C = R_C * 10^3;// in ohm
V_CE = V_CC - (I_C*R_C);// in V
disp("Part (a) For ideal approximation")
disp(V_CE,"The collector emitter voltage in V is");
P_D = V_CE * I_C;// in mW
disp(P_D*10^3,"Transistor power in mW is");
disp("Part (b) For second approximation")
V_BE1 = 0.7;// in V
I_B = (V_BB-V_BE1)/R_B;// in A
I_C = beta_dc * I_B;// in A
V_CE = V_CC - (I_C*R_C);// in V
disp(V_CE,"Collector emitter voltage in V is");
P_D = V_CE * I_C;// in W
disp(P_D*10^3,"Power dissipation in mW is"); 
