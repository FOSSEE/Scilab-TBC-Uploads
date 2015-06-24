// Exa 1.35
clc;
clear;
close;
format('v',6)
// Given data
C_T1 = 15;// in pF
Vb1 = 8;// in V
Vb2 = 12;// in V
// C_T1/C_T2 = (Vb2/Vb1)^(1/2);
C_T2 = C_T1 * ((Vb1/Vb2)^(1/2));// in pF
disp(C_T2,"The value of C_T for reverse bias in pF is");
