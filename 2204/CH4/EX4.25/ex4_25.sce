// Exa 4.25
clc;
clear;
close;
// Given data
R_F = 5;// in  k ohm
R_G = 1;// in  k ohm
R1 = 10;// in  k ohm
R2 = 20;// in  k ohm
A = (1 + ((2*R_F)/R_G))*(R2/R1);
disp(A,"The gain of instrumentaion amplifier is");
