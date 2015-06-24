// Exa 4.15
clc;
clear;
close;
format('v',9)
// Given data
Ib = 20;// in µA
Ib = Ib * 10^-6;// in A
I_C = 1;// in mA
I_C = I_C * 10^-3;// in A
Vbe = 22;// in mV
Vbe = Vbe * 10^-3;// in V
Vce = 0;// in V
h_ie = Vbe/Ib;// in ohm
h_ie = h_ie * 10^-3;// in k ohm
disp(h_ie,"The value of h_ie in k ohm is");
h_fe = I_C/Ib;// unit less
disp(h_fe,"The value of h_fe is");
Ib = 0;
Vbe = 0.25;// in mV
Vbe = Vbe * 10^-3;// in V
I_C = 30;// in µA
I_C = I_C * 10^-6;// in A
Vce = 1;// in V
h_re = Vbe/Vce;// unit less
disp(h_re,"The value of h_re is");
h_oe = I_C/Vce;// in S
h_oe = h_oe * 10^6;// in µS
disp(h_oe,"The value of h_oe in µS is");
