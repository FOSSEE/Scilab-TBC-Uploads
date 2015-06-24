// Example 5.4: conductivity
clc, clear
// given :
format('v',8)
V=.432; // voltage drop across the wire in volts
I=10; // current through the wire in A
l=1; // length in m
d=1*10^-3; // diameter in m
R=V/I;
A=(%pi*d^2)/4;
p=(R*A)/l;
b=1/p;
disp(b,"conductivitty,b(ohm^-1.m^-1) = ")
