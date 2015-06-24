// Exa 11.9
clc;
clear;
close;
format('v',6)
// Given data
P = 8;
f = 50;// in Hz
f_r = 2;// in Hz
// f_r = s*f;
s = (f_r/f)*100;// in %
disp(s,"The full load slip in % is");
// s = Ns-N/Ns;
Ns = (120*f)/P;// in rpm
N = Ns*(1-(s/100));// in rpm
disp(N,"The corresponding speed in rpm is");
