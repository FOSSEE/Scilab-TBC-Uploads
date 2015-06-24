// Exa 2.18
clc;
clear;
close;
// Given data
I_CQ = 10;// in µA
I_CQ= I_CQ*10^-6;// in A
I = I_CQ;// in A
C_C = 33;// in pF
C_C=C_C*10^-12;// in F
C = C_C;// in F
S = I/C;// in V/sec
disp(S*10^-6,"The slew rate in V/µ-sec is");
V_m = 12;// in V
f_m = S/(2*%pi*V_m);// in Hz
f_m = f_m * 10^-3;// in kHz
disp(f_m,"Maximum possible frequency in kHz is");
