// Exa 6.4
format('v',7);clc;clear;close;
// Given data
L3 = 8;// in mH
L3 = L3 * 10^-3;// in H
R1 = 1;// in k ohm
R1 = R1 * 10^3;// in ohm
R2 = 25;// in k ohm
R2 = R2 * 10^3;// in ohm
R3 = 50;// in  k ohm
R3 = R3 * 10^3;// in ohm
Rx = (R2*R3)/R1;//unknown resistance in ohm
Rx = Rx * 10^-6;// in M ohm
disp(Rx,"The value of Rx in MΩ is");
Lx = (R2*L3)/R1;//unknown inductance in H
Lx = Lx * 10^3;// in mH
disp(Lx,"The value of Lx in mH is");
