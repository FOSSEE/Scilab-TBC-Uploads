// Exa 1.15
clc;
clear;
close;
// Given data
V_CC=10;// in volt
V_BE=0.7;// in volt
R1= 15;// in k ohm
R1=R1*10^3;// in ohm
Bita=100;
I_REF= (V_CC-V_BE)/R1;// in amp
disp(I_REF*10^3,"Reference current in mA")
I_out= I_REF*Bita/(Bita+2);// in amp
disp(I_out*10^3,"Output current in mA")

