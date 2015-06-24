// Exa 2.16
clc;
clear;
close;
// Given data
E= 1;//in v/m
miu= 32*10^-4;// in m^2/Vs
m= 9.1*10^-28;// in gram
m=m*10^-3;// in kg
q=1.6*10^-19;// in C
toh_r= 2*miu*m/q;// in sec
Vd= miu*E;// in m/sec
disp(toh_r,"The relaxation time in sec is :")
disp(Vd*10^2,"Drift velocity in cm/sec is :")
