// Exa 8.12
clc;
clear;
close;
// Given data
R_f = 200;// in  kohm
R1 = 20;// in kohm
A_v = -(R_f/R1);
V_i = 0.1;// in V
V_im = 0.5;// in V
V_omin = -10*V_i;// in V
disp(V_omin,"The minimum output voltage in V is");
V_omax = -10*V_im;// in V
disp(V_omax,"The maximum output voltage in V is");
disp("Output voltage ranges from "+string(V_omin)+" to "+string(V_omax))
