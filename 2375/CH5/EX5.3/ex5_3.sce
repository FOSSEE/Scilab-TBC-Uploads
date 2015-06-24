// Exa 5.3
clc;
clear;
close;
format('v',5)
// Given data
W = 10^-6;// in m
I_E =2;// in mA
I_E = I_E * 10^-3;// in A
V_T = 26;// in mV
V_T = V_T * 10^-3;// in V
D_B = 47*10^-4;
//g_m = abs(I_C)/V_T = abs(I_E)/V_T;
// The emitter diffusion capacitance, Cbe = g_m*((W^2)/(2*D_B));
Cbe = I_E/V_T*W^2/(2*D_B);// F
Cbe= Cbe*10^12;// in pF
disp(Cbe,"The emitter diffusion capacitance in pF is");
Cbe= Cbe*10^-12;// in F
g_m = abs(I_E)/V_T;
// The transition frequency 
f_T = g_m/(2*%pi*Cbe);// in Hz
f_T = f_T * 10^-6;// in MHz
disp(f_T,"The transition frequency in MHz is");

// Note: The answer in the book is not accurate.
