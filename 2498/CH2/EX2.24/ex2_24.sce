// Exa 2.24
clc;
clear;
close;
format('v',6)
// Given data
f = 50;// in Hz
Vrms = 280;// in V
Vm = sqrt(2)*Vrms;// in V
V_Lmax = Vm;// in V
Idc = 100;// in mA
Idc =Idc * 10^-3;// in A
C2 = 10;// in µF
C2 = C2 * 10^-6;// in F
C1 = C2 ;// in F
R_L =V_Lmax/Idc;// in ohm
L = 104;// in H
omega = 2*%pi*f;// in rad/sec
// The percentage ripple 
Gamma = sqrt(2)/( 8*omega^3*C1*C2*L*R_L)*100;// in %
disp(Gamma,"The percentage ripple in % is");

// Note: There is calculation error to find the value of gamma, So the answer in the book is wrong.
