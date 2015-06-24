// Exa 6.5
format('v',7);clc;clear;close;
// Given data
C1 = 0.5;// in µF
C1 = C1 * 10^-6;// in µF
R1 = 1200;// in ohm
R2 = 700;// in ohm
R3 = 300;// in ohm
// From bridge balance equation
Rx = (R2*R3)/R1;// in ohm
disp("Component of the brach BC :")
disp("Rx = "+string(Rx)+" Ω");
Lx = R2*R3*C1;// in H
Lx = Lx * 10^3;// in mH
disp("Lx = "+string(Lx)+" mH");
