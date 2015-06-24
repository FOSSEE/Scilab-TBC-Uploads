// Exa 7.2
clc;
clear;
close;
format('v',6)
// Given data
f_o = 100;// in kHz
f_o = f_o * 10^3;// in Hz
L = 100;//in µH
L = L * 10^-6;// in H
//Formula  f_o = 1/( 2*%pi*(sqrt(L*C)) );
C1 = 1/(4*(%pi^2)*(f_o^2)*L);// in F
C1 = C1 * 10^12;// in pF
f_o = 1500;// in kHz
f_o = f_o * 10^3;// in Hz
C2 = 1/(4*(%pi^2)*(f_o^2)*L);// in F
C2 = C2 * 10^12;// in pF
disp("The range of variable capacitor is "+string(C2)+" pF to "+string(C1)+" pF")
