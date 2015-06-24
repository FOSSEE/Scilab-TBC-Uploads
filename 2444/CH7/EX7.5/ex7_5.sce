// Exa 7.5
clc;
clear;
close;
format('v',6)
// Given data
f_o = 950;// in kHz
f_o = f_o  *10^3;// in Hz
C1 = 100;// in pF
C1 = C1 * 10^-12;// in F
C2 = 7500;// in pF
C2 = C2 * 10^-12;// in F
//Formula  f_o = (1/(2*Pi))*(sqrt( (1/(L*C1))+(1/(L*C2)) ));
L1 = (1/(4*(%pi^2)*(f_o^2)))*( (1/C1) + (1/C2) );// in H
L1 = L1 * 10^3;// in mH
f_o = 2050;// in kHz
f_o = f_o * 10^3;// in Hz
L2 = (1/(4*(%pi^2)*(f_o^2)))*( (1/C1) + (1/C2) );// in H
L2 = L2 * 10^3;// in mH
disp("The range of inductance values is : "+string(L2)+" mH to "+string(L1)+" mH");
