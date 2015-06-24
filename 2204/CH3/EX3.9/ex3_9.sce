// Exa 3.9
clc;
clear;
close;
// Given data
R_F = 1;// in M ohm
R_in = 1;// in M ohm
V_in = 1;// in V (assumed)
V_out = -(R_F/R_in)*V_in;
A_v = V_out/V_in;
disp(A_v,"The value of A_v is");
I_in = 1;// in A
I_out = I_in;// in A
A_in = I_out/I_in;
disp(A_in,"The value of A_in is");
A_P = abs(A_v*A_in);
disp(A_P,"The value of A_P is");
