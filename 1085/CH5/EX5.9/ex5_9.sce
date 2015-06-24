//Exam:5.9
clc;
clear;
close;
t=10^-9;//collision time(in seconds)
E_f=7;//fermi energy(in eV)
e=1.6*10^-19;
m=9.1*10^-31;
W_f=E_f*e;//fermi energy(in joules)
v_f=(2*W_f/m)^(1/2);//velocity of an electrons at fermi level(in m/sec)
P=v_f*t;//Mean free path(in meter)
disp(P,'Mean free path(in meter)=')