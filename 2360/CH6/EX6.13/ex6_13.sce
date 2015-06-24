// Exa 6.13
format('v',7);clc;clear;close;
// Given data
f = 1;// in MHz
f = f * 10^6;// in Hz
omega = 2*%pi*f;// in rad/sec
C = 65;// in pF
C = C * 10^-12;// in F
R = 10;// in ohm
R_SH = 0.02;// in ohm
// Q = X_L/R = X_C/R = 1/(omega*C*R);
Qactual = 1/(omega*C*R);// True value of Q
Qmeasured = 1/(omega*C*(R+R_SH));// measured value of Q
PerError = ((Qactual-Qmeasured)/Qactual)*100;//percentage error in %
disp(PerError ,"The Percentage error in % is");
