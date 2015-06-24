// Exa 3.10
clc;
clear;
close;
// Given data
Im= 50;// in micro amp
Im=Im*10^-6;// in amp
Rm= 49;// in ohm
Rs= 1;// in ohm
Is= Im*Rm/Rs;//in amp
I= Im+Is;// in amp
// (i)
I1= I;// in amp
I2= I*0.5;// in amp
I3= I*0.1;// in amp
disp(I1*10^3,"Main circuit current at FSD in mA")
disp(I2*10^3,"Main circuit current at 0.5 FSD in mA")
disp(I3*10^3,"Main circuit current at 0.1 FSD in mA")
