// Exa 6.30
format('v',7);clc;clear;close;
// Given data
R3 = 100;// in ohm
R4 = 200;// in ohm
R2 = 250;// in ohm
C = 1;// in µF
C = C * 10^-6;// in F
r = 229.7;// in ohm
r1 = 43.1;// in ohm
// Value of unknown resistance for Anderson's bridge
R1 = ((R2*R3)/R4) - r1;//resistance in ohm
disp(R1,"The resistance in ohm is");
L1 = ((C*R3)/R4) * ( ((R2+R4)*r) + (R2*R4) );//inductance in H
L1 = L1 * 10^3;// in mH
disp(L1,"The inductance in mH is");

