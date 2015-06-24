//Example 1.21.1: L and C
clc;
clear;
close;
//given data :
V=100;// in volts
Irm=40;// in A
tq=40;// in micro-sec
Del_t=(50/100)*tq;// in micro-sec
C=(Irm*(tq+Del_t))/V;
disp(C,"capacitance,C(micro-farad) = ")
L_min=(V/Irm)^2*C;
disp(L_min,"minimum inductance,L_min(micro-Henry) = ")
T=2.5;// assume one cycle period in ms
L_max=((0.01*(T*10^-3)^2)/(%pi^2*C*10^-6))*10^6;
disp(L_max,"Maximum inductance,L_max(micro-Henry) = ")
