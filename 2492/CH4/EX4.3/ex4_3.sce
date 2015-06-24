// Exa 4.3
format('v',6)
clc;
clear;
close;
// Given data
V_CE = 9;// in V
R_C = 10;// in Mohm
R_C = R_C * 10^6;// in ohm
V = 10;// in V
I_CEO = (V - V_CE)/R_C;// in A
// When R_C is changed to 10 k ohm
R_C = 10;// in k ohm
R_C = R_C * 10^3;// in ohm
V_CE = (V - (I_CEO*R_C));// in V
disp(V_CE,"The new value of V_CE in V is");
