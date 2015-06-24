// Exa 10.17
clc;
clear;
close;
format('v',6)
// Given data
N1 = 600;// inrpm
I_L1 = 60;// in A
V = 230;// in V
Rsh = 115;// in ohm
Ra= 0.2;// in ohm
Ia2 = 30;// in A
Ish = V/Rsh;// in A
Ia1 = I_L1 - Ish;// in A
Eb1 = V-(Ia1*Ra);// in V
Eb2 = V - (Ia2*Ra);// in V
// N1/N2 = Eb1/Eb2;
N2 = (N1*Eb2)/Eb1;// in rpm
disp(N2,"The speed when 30 A current through the armature in rpm is");
