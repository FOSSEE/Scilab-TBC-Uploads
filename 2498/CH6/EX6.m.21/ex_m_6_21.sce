// Exa Misc. 6.21
clc;
clear;
close;
format('v',6)
// Given data
i1 = 1;//input current for first op-amp in mA
i1 = i1 * 10^-3;// in A
R_F = 1;// in k ohm
R_F = R_F * 10^3;// in ohm
// Output voltage at first op-amp stage
Vo = -i1*R_F;// in V
R1 = 10;// in k ohm
R2 = 1;// in k ohm
// The output voltage,
Vg1 = Vo*(1+(R1/R2));// in V
disp(Vg1,"The output volatge in V is");
