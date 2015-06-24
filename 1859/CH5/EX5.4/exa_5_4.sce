// Exa 5.4
clc;
clear;
close;
// Given data
R=100;// in kohm
R=R*10^3;//in ohm
C=1*10^-6;// in F
V_REF= 5;// in volt
t=0.2;// time taken to read unknown voltage in sec
T=R*C;// in sec
Vx= T/t*V_REF;// in volt
disp(Vx,"Unknown voltage in volt")
