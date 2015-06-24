// Exa 8.15
clc;
clear;
close;
// Given data
C_1N= 36;// in pF
C_2= 150;// in pF
R_1N= 1;// in M ohm
R_1= 10;// in M ohm
// R_1/(omega*(C_2+C_1N)) = R_1N/(omega*C_1)
C_1= R_1N*(C_2+C_1N)/R_1;// in pF
disp(C_1,"Value of C_1 in pF")
C_T= 1/(1/C_1+1/(C_2+C_1N));// in pF
disp(C_T,"Value of C_T in pF")
