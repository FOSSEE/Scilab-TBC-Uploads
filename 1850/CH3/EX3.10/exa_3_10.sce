// Exa 3.10
clc;
clear;
close;
// (i) Given amplifier is an inverting amplifier, where
// V_out= -R_f/R_in*V_in = 1Mohm/1Mohm*V_in = -V_in, So
// Av= V_out/V_in
Av=-1;
disp(Av,"Input impedence :");
// (ii) Because it is a unity gain inverter, So I_in= I_out
// A_in = I_out/I_in
A_in = 1;
disp(A_in,"Voltage gain :");
// (iii) Power gain of op-amp circuit
A_p=abs(Av*A_in);
disp(A_p,"Power gain :");
