// Exa 6.11
format('v',7);clc;clear;close;
// Given data
f = 1.5;//frequency in MHz
f = f * 10^6;// in Hz
C = 60;// in pF
C = C * 10^-12;// in F
R = 8;// in ohm
R_SH = 0.02;// in ohm
omega = 2*%pi*f;
Qactual = 1/(omega*C*R);// true value of Q
Qobserved = 1/(omega*C*(R+R_SH));// observed value of Q
PerError = ((Qactual-Qobserved)/Qactual) * 100;// Percentage error in %
disp(PerError,"The Percentage error in % is");
