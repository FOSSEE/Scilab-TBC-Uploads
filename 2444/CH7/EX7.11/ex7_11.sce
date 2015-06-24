// Exa 7.11
clc;
clear;
close;
format('v',5)
// Given data
R1 = 800;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = R1;// in ohm
R3 = R1;// in ohm
R = R1;// in ohm
C1 = 100;// in pF
C1 = C1 * 10^-12;// in F
C2 = C1;// in F
C3 = C1;// in F
C = C1;// in F
f_o = 1/(2*%pi*R*C*sqrt(6));// in Hz
disp(f_o,"The frequency of oscillation in Hz is");
