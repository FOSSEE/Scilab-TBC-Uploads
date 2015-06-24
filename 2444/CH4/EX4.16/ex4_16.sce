// Exa 4.16
clc;
clear;
close;
format('v',6)
// Given data
h_fe = 50;// unit less
h_ie = 0.83;// in k ohm
h_ie = h_ie * 10^3;// in ohm
h_fb = -h_fe/(1+h_fe);// unit less
disp(h_fb,"The current gain is");
h_ib = h_ie/(1+h_fe);// in ohm
disp(h_ib,"The input impedance in ohm is");
