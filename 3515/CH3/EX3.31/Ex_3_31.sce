// Exa 3.31
format('v',7);
clc;
clear;
close;
// Given data
V_T= 0.025;// in V
I_E= 0.5;// in mA
I_E= I_E*10^-3;// in mA
Rsig= 50;// in Ω
R_C= 5*10^3;// in Ω
re= V_T/I_E;// in ohm
Rin= Rsig+re;// in ohm
disp(Rin,"Input resistance in Ω is : ")
// Part(b)
// vo= -0.99*ie*R_C and ie= -v_sig/Rin
vo_by_v_sig= 0.99*R_C/Rin;// in V/V
disp(vo_by_v_sig,"The value of vo/vsig in V/V is : ")
