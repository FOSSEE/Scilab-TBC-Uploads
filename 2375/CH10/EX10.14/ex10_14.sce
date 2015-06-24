// Exa 10.14
clc;
clear;
close;
format('v',5)
// Given data
A = 200;
BW = 10;// in kHz
Beta = 10/100;
Af =A/(1+(A*Beta));
disp(Af,"The gain with negative feedback is");
BWf = BW*(1+(A*Beta));// in kHz
disp(BWf,"The bandwidth with negative feedback in kHz is");
