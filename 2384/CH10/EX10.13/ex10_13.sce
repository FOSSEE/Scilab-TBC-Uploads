// Exa 10.13
clc;
clear;
close;
format('v',6)
// Given data
V = 230;// in V
Ra = 0.115;// in ohm
Rsh = 115;// in ohm
I_L = 100;// inA
Ish =V/Rsh;// in A
Ia = I_L + Ish;// in A
Eg = V + (Ia*Ra);// in V
Ia = I_L-Ish;// in A
Eb = V - (Ia*Ra);// in V
// The ratio of speed as a generator to speed as a motor 
NgBYNm = Eg/Eb;
disp(NgBYNm,"The ratio of speed as a generator to speed as a motor is");
