// Exa 3.6
clc;
clear;
close;
// Given data
A =2*10^5;
R_i = 2;// in M ohm
R1 = 1;// in ohm 
R_o= 75;// in ohm
R_F = 1;// in ohm
B = R1/(R1+R_F);
A_F = -1;
disp(A_F,"The voltage gain is ");
R_if = 330;// in ohm
disp(R_if,"Input resistance in Ω is");
R_of = R_o/(A/2);// in ohm
disp(R_of,"Output resistance in Ω is");
f_o = 5;// in Hz
f_F = (A/2)*f_o;// in Hz
f_F = f_F * 10^-6;// in MHz
disp(f_F,"The bandwidth in MHz is");
