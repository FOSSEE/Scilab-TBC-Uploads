// Exa 4.28
clc;
clear;
close;
// Given data
V_B = 4;// in V
V_BE = 0.7;// in V
R_E = 1.2;// in kohm
R_E= R_E*10^3;// in ohm
V_E = V_B-V_BE;// in V
R_C = 2.2;// in kohm
R_C= R_C*10^3;// in ohm
R_B= 330;// in kohm
R_B= R_B*10^3;// in ohm
bita = 180;
I_B = 7.11 * 10^-6;// in A
V_CC = 18;// in V
disp("Part (a)")
disp(V_E,"The value of V_E in V is");
I_C = V_E/R_E;// in A
disp("Part (b)")
disp(I_C*10^3,"The value of I_C in mA is : ")
V_C =V_CC - (I_C*R_C);// in V
disp("Part (c)")
disp(V_C,"The value of V_C in V is");
V_CE = V_C-V_E;// in V
disp("Part (d)")
disp(V_CE,"The value of V_CE in V is : ")
//I_C = bita*I_B;// in A
//disp(I_C*10^3,"The value of I_C in mA is : ")
//V_CC= 12;// in V
//R_C = 4.7;// in kohm
//R_C= R_C*10^3;// ohm
//V_C = V_CC - (I_C*R_C);// in V
//disp(V_C,"The value of V_C in V is");
//R_B = 1.15*10^6;// in ohm
//R_E = 3.3*10^3;// in ohm
//I_B = (V_CC - V_BE)/(R_B + bita*(R_C+R_E));// in A
//disp(I_B*10^6,"The value of I_B in µA is : ")
//I_C = bita*I_B;// in A
//disp(I_C*10^3,"The value of I_C in mA is : ")
//V_C = V_CC - (I_C * R_C);// in V
//disp(V_C,"The value of V_C in V is : ")
//disp("We conclude that collector voltage V_C varies from 5.98 V to 8.30 V");
//disp("Part (e)")
I_B = (V_CC - (I_C*R_C) - V_BE - V_E)/R_B;// in A
disp(I_B*10^6,"Base current in µA is");
bita = I_C/I_B;
disp(bita,"Current gain is");
