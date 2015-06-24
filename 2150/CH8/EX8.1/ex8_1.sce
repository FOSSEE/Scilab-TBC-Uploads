// Exa 8.1
clc;
clear;
close;
// Given data
A_V = -100;
R1 = 2.2;// in kohm
R1 = R1*10^3;// in ohm
R_f =-( A_V*R1);// in ohm
R_f = R_f * 10^-3;// in kohm
disp(R_f,"The resistance value in kΩ is");
