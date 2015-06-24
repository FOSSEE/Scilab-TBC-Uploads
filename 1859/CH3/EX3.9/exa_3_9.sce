// Exa 3.9
clc;
clear;
close;
// Given data
Rm= 1.0;// in ohm
Rse= 4999;// in ohm
V=250;// full scale deflection voltage in volt
// Formula V= Im*(Rm+Rse)
Im= V/(Rm+Rse);// in amp

// Part(a)
Rs= 1/4999;// in ohm
Is= Im*Rm/Rs;//in amp
I= Im+Is;// in amp
disp(I,"Current range in amp")

// Part(b)
I=50;// in amp
N=I/Im;
Rs= Rm/(N-1);// in ohm
disp(Rs,"Required shunt resistance in ohm")
