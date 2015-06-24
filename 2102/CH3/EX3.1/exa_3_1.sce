// Exa 3.1
clc;
clear;
close;
// Given data
Co= 20;// in pF
Vr= 5;// in V
V_T= 26;// in mV
V_T= V_T*10^-3;// in V
C_T= Co/(1+(Vr/V_T));// in pF
disp(C_T,"The transition capacitance of diode in pF")
