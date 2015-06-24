// Exa 5.10
clc;
clear;
close;
// Given data
R_L = 10;// in kohm
R_L= R_L*10^3;// in ohm
R_C = 3.6;// in kohm
R_C= R_C*10^3;// in ohm
r_e_desh = 22.73;// in ohm 
R_L_desh = R_L/2;// in ohm
A_v = ( (R_C*R_L_desh)/(R_C+R_L_desh))/r_e_desh;
disp(A_v,"The voltage gain is");
