// Exa 2.4
clc;
clear;
close;
format('v',5)
// Given data
R1 = 5;// in ohm
R2 = 10;// in ohm
R3 = 7;// in ohm
V = 20;// in V
Vth = R2*V/(R1+R2);// in V
Rth = R3 + ((R2*R1)/(R2+R1));// in ohm
R_L = Rth;// in ohm
disp(R_L,"The value of load resistance in ohm is");
Pmax = (Vth^2)/(4*R_L);// in W
disp(Pmax,"The magnitude of maximum power in W is");
