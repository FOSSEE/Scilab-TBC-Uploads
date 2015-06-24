// Example 7.16
clc;
clear;
close;
// Given data
format('v',5);
R= 15*10^3;// in Ω
C= 0.01*10^-6;// in F
f= 2*10^3;// in Hz
PhaseShift= -2*atand(2*%pi*f*R*C);// in °
disp("The phase shift is : "+string(PhaseShift)+"° i.e. "+string(abs(PhaseShift))+"° (lagging)")


