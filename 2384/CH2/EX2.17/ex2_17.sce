// Exa 2.17
clc;
clear;
close;
format('v',6)
// Given data
R1 = 10;// in ohm
R2 = 10;// in ohm
R3 = 4;// in ohm
V = 20;// in V
// V - R1*I1 - R2*I1 = 0;
I1 = V/(R1+R2);// in A
Vth = R1*I1;// in V
Rth =R1*R2/(R1+R2)+R3
R_L = Rth;// in ohm
disp(R_L,"The value of load resistance in ohm is");
Pmax = (Vth^2)/(4*Rth);// in W
disp(Pmax,"The power delivered to the load in W is");
