// Exa 3.8
clc;
clear;
close;
// Given data
Im= 50*10^-6;// in amp
Rm= 1000;// in ohm
I=1;// in amp
Rs= Rm/(I/Im-1);// in ohm
disp(Rs,"Resistance of ammeter shunt required in ohm")
