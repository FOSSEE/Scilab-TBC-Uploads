// Exa 7.11
clc;
clear;
close;
// Given data
V_DS = 0.1;// in V
I_D = 10;// in mA
I_D= I_D*10^-3;// in A
R_DS = V_DS/I_D;// in ohm
disp(R_DS,"Part (a) The value of R_DS(on) in ohm is");
V_DS = 0.75;// in V
I_D = 100;// in mA
I_D= I_D*10^-3;// in A
R_DS = V_DS/I_D;// in ohm 
disp(R_DS,"Part (b) The value of R_DS(on) in ohm is");
