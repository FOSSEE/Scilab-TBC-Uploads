// Exa 5.5
clc;
clear;
close;
format('v',6)
// Given data
Ccb = 5;// in pF
Cbe = 12;// in pF
h_fe = 100;// unite less
h_ie = 1.5;// in k ohm
R_C = 12;// in k ohm
Av = (-h_fe/h_ie)*R_C;
Cin = Cbe + (1-Av)*Ccb;// in pF
disp(Cin,"The input capacitance in pF is");
