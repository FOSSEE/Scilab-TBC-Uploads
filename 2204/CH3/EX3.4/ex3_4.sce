// Exa 3.4
clc;
clear;
close;
// Given data
A_F = 61;
R1 = 1;// in k ohm
R1 = R1 * 10^3;// in ohm
R_F = (A_F-1)*R1;// in ohm
R_F = R_F * 10^-3;// k ohm
disp(R_F,"The value of feedback resistance in kΩ is");
