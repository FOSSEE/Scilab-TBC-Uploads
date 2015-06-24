// Exa 1.21
clc;
clear;
close;
// Given data
format('v',7)
V_BE=0.7;// in volt
V_CC=18;// in volt
R_E=1.1;// in k ohm
R_C=1.8;// in k ohm
R_C=R_C*10^3;// in ohm
R1=4.7;// in k ohm
R2=5.6;// in k ohm
R3=6.8;// in k ohm
I_E1= (V_CC*R1/(R1+R2+R3)-V_BE)/R_E;// in mA
re_desh= 26/I_E1;// in ohm
re2_desh=re_desh
Av= -R_C/re2_desh;
disp(Av,"Voltage gain of the cascode amplifier is : ")
