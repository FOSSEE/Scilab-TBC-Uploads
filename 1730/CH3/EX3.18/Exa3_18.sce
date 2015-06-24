//Exa3.18
clc;
clear;
close;
// given data
w=0.1;// in mm
B_Z=0.6;// in T
R_H=3.8*10^-4;// in m^3/C
I=10;// in mA
I=I*10^-3;//in A
V_H=R_H*B_Z*I/w;// in V
V_H=V_H*10^6;// in V
disp("Hall voltage is : "+string(V_H)+" micro volt");
