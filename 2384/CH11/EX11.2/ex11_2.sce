// Exa 11.2
clc;
clear;
close;
format('v',6)
// Given data
f = 50;// in Hz
P = 4;
f_DASH = 2;// in Hz
// f_DASH = s*f;
s = (f_DASH/f)*100;// in %
disp(s,"The slip in % is");
N_S = (120*f)/P;// in rpm
// s = (N_S-N)/N_S;
N = N_S - (s/100*N_S);// in rpm
disp(N,"The speed of the motor in rpm is");
