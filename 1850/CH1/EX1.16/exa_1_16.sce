// Exa 1.16
clc;
clear;
close;
// Given data
V_CC=15;// in volt
V_BE=0.7;// in volt
R_REF= 2.2;// in k ohm
R_REF= R_REF*10^3;// in ohm
Bita=220;
I_REF= (V_CC-V_BE)/R_REF;// in amp
I= I_REF*Bita/(Bita+2);// in amp
disp(I*10^3,"Current in mA")



