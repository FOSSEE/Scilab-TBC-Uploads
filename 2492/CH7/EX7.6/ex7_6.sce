// Exa 7.6
format('v',5)
clc;
clear;
close;
// Given data
Ro = 10;// in k ohm
R1 = 10;// in k ohm
R2 = 2.2;// in k ohm
R3 = 3.3;// in k ohm
V1 = 6;// in V
V2 = -3;// in V
V3 = -0.75;// in V
// Output voltage,
Vo = -( ((Ro/R1)*V1) + ((Ro/R2)*V2) + ((Ro/R3)*V3) );// in V
disp(Vo,"The value of Vo in V is");
