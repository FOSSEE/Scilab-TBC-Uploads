// Exa 1.20
clc;
clear;
close;
// Given data
format('v',7)
V_BE=0.7;// in volt
V_CC=5;// in volt
V_EE=-5;// in volt
Bita=100;
R=18.6;// in k ohm
R= R*10^3;// in ohm
I2= (V_CC-V_BE-V_EE)/R;// in amp
I_C3=I2;
I_E= I_C3/2;// in amp
re_desh= (26*10^-3)/I_E;// in ohm
re1_desh=re_desh;
re2_desh=re1_desh;
R_in1= 2*Bita*re_desh;// in ohm
R_in2= R_in1
disp(R_in1*10^-3,"Differential input resistance in k ohm")
