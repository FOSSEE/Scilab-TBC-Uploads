// Exa 5.6
clc;
clear;
close;
format('v',5)
// Given data
D_B = 47;// in cm^2/sec
I_C = 2;// in mA
I_C = I_C * 10^-3;// in A
V_CEQ = 15;// in V
W = 1;// in µm
W = W * 10^-4;// in cm
V_T = 0.026;// in V
g_m =I_C/(abs(V_T));// in ohm
Ce = (g_m*(W^2))/(2*D_B);// in F
Ce = Ce * 10^12;// in pF
disp(Ce,"The value of Ce in pF is");
f_T = g_m/(2*%pi*Ce*10^-12);// in Hz
f_T = f_T * 10^-6;// in MHz
disp(f_T,"The value of f_T in MHz is");
