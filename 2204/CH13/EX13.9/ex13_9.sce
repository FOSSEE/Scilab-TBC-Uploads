// Exa 13.9
clc;
clear;
close;
// Given data
f = 800;// in Hz
C = 0.01;// in µF
C =C * 10^-6;// in F
R_A = 1.44/(5*f*C);// in ohm
R_A = R_A * 10^-3;// in k ohm
disp(R_A,"The value of R_A in kΩ is");
R_B = 2*R_A;// in k ohm
disp(R_B,"The value of R_B in kΩ is ");
