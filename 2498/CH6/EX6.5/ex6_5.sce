// Exa 6.5
clc;
clear;
close;
format('v',6)
// Given data
Ao = -20;
Ri = 5;// in k ohm
R1 = Ri;// in k ohm
disp(R1,"The value of R1 in k ohm is");
// Closed loop voltage gain for inverting amplifier, Ao = -R_F/R1 or
R_F = -Ao*R1;// in k ohm
disp(R_F,"The value of R_F in k ohm is");
