// Exa 9.7
clc;
clear;
close;
//given data
C=.1;// in micro F
C=C*10^-6;// in  F
R_A= 20;// in kohm
R_A=R_A*10^3;// in ohm
PulseWidth= 1.1*R_A*C;// in seconds
disp(PulseWidth*10^3,"The output pulse width in mili seconds");
