// Exa 5.13
clc;
clear;
close;
format('v',6)
// Given data
R_S = 600;// in ohm
r_i = 400;// in ohm
Vs = 1;// in mV
Vs = Vs * 10^-3;// in V
//Input voltage
Vi = Vs*(r_i/(R_S+r_i));// in V
// Input current
Ii =Vs/(R_S+r_i);// in A
Vo = 100;// in mV
Vo = Vo * 10^-3;// in V
R_L = 5;// in  k ohm
R_L = R_L * 10^3;// in ohm
// Output current 
Io = Vo/R_L;// in A
// voltage gain
A_V =Vo/Vi ; 
disp(A_V,"The voltage gain is");
// current gain
A_I = Io/Ii;
disp(A_I,"The current gain is");
// Power gain
P =A_V*A_I;
disp(P,"The power gain is");
