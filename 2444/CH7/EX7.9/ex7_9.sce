// Exa 7.9
clc;
clear;
close;
format('v',7)
// Given data
f_s = 1;// in MHz
f_s = f_s * 10^6;// in Hz
Cs = 0.1;// in pF
Cs = Cs * 10^-12;// in pF
// f_s = 1/(2*%pi*(sqrt( Ls*Cs )));
Ls = 1/(4*(%pi^2)*Cs*(f_s^2));// in H
disp(Ls,"The value of inductance in H is");
