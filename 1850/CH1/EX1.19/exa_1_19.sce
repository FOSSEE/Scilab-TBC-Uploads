// Exa 1.19
clc;
clear;
close;
// Given data
format('v',7)
V_BE=0.715;// in volt
V_CC=9;// in volt
Bita_dc=100;
Bita_ac= Bita_dc;
V_EE= 10;// in volt
R=5.6;// in k ohm
R= R*10^3;// in ohm
I_REF= (V_EE-V_BE)/R;// in amp
// From 2*I_B + I_C1 -I_REF =0
I_C1= I_REF*Bita_dc/(2+Bita_dc);// in amp
// By symmetry
I_C2= I_C1;
I_C3= I_C2;
I=3*I_C1;// current through R_C in amp
disp(I*10^3,"Current through R_C in mA");
