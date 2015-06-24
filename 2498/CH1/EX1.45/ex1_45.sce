// Exa 1.45
clc;
clear;
close;
format('v',6)
// Given data
Rf = 300;// in ohm
V = 0.5;// in V
R = 600;// in ohm
Vi = 2;// in V
// The output voltage 
Vo = (Vi-V)*( R/(R+Rf) );// in V
disp(Vo,"The value of Vo in V is");
