// Exa 6.6
format('v',7);clc;clear;close;
// Given data
R2 = 1000;//resistance in ohm
R3 = 500;// resistance in ohm
R4 = 1000;// resistance in ohm
C = 3;//capacitance in µF
C = C * 10^-6;// in F
r = 100;// in ohm
Rx = (R2*R3)/R4;//value of Rx in ohm
disp(Rx,"The value of Rx in Ω is");
Lx = ((C*R2)/R4)*( (R3*r) + (R4*r) + (R3*R4) );//value of Lx in H
disp(Lx,"The value of Lx in H is");
