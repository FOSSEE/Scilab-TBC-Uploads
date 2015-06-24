// Exa 6.15
clc;
clear;
close;
// Given Data
format('v',7)
f= 2;// in kHz
f=f*10^3;// in Hz
C= 0.01;// in micro F
C=C*10^-6;// in F
R= 15;// in kohm
R=R*10^3;// in ohm
fie= -2*atand(2*%pi*f*R*C);
fie= ceil(fie);
disp(fie,"Phase shift in °");
disp("i.e. "+string(abs(fie))+"° (lagging)")
