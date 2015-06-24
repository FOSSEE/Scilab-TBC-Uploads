// Exa 6.42
format('v',7);clc;clear;close;
// Given data
Q = 1;// in k ohm
Q = Q * 10^3;// in  ohm
S = Q;// in ohm
P = 500;// in ohm
r = 100;// in ohm
C = 0.5;// in µF
C = C * 10^-6;// in F
//Using standard condition, Rx = (R2*R3)/R4;
Rx = (P*Q)/S;// in ohm
disp(Rx,"The value of Rx in Ω is");
//Lx = ((C*R2)/R4) * ( (R3*r) + (R4*r) + (R3*R4) );
Lx = ((C*P)/S) * ( (Q*r) + (S*r) + (Q*S) );// in H
disp(Lx,"The value of Lx in H is");
