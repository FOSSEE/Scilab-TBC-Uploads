//Example 3.3 // resistance
clc;
clear;
close;
//given data :
L=1000; // length of wire in cm
d=0.14; // diameter of wire in cm
R1=2.5*10^6; // resistance in micro-ohm
a=(%pi*d^2)/4; // cross section area
p=(R1*a)/L;
disp(p,"the specific resistance,p(micro-ohm-cm) = ")
