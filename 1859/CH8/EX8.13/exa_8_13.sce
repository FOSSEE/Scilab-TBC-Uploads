// Exa 8.13
clc;
clear;
close;
// Given data
f=2000;// in Hz
T=1/f;// in sec
D=0.2;
PulseDuration= D*T;// in sec
disp(PulseDuration*10^3,"Pulse duration in ms") 
