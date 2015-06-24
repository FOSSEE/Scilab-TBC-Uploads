// Example 5.3: resistance
clc, clear
// given :
format('v',5)
p=1.7*10^-8; //  resistivity i ohm-m
d=0.0005; // diameter of the wire in m
l=31.4; // length in m
A=(%pi*d^2)/4;
R=p*(l/A);
disp(R,"resistance of wire,R(ohm) = ")
