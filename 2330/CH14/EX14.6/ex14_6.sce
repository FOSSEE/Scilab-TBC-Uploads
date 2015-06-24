// Example 14.6
format('v',6)
clc;
clear;
close;
// given data
Eta= 0.85;
V= 10;// in V
V1= Eta*V;// in V
V= 20;// in V
R= 400;// in Ω
// The emitter current
I_E= V/R;// in A
I_E= I_E*10^3;// in mA
disp(I_E,"The emitter current in mA is : ")

