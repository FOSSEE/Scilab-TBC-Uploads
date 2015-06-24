// EXa 4.21
clc;
clear;
close;
// Given data
R1 = 100;// in k ohm
R2 = 100;// in k ohm
R_F = 470;// in k ohm
Gain = 100;
R_G = (2*R_F)/(Gain-1);// in ohm
disp(R_G,"The value of R_G in ohm is");
