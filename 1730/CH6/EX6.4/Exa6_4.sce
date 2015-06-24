//Exa 6.4
clc;
clear;
close;
// given data
g=12*10^-3;// in V-m/N
t=1.25*10^-3;// in m
A=5*5*10^-6;// in m^2
F=3;// in N
ChargeSensitivity=150*10^-12;// in C/N
P=F/A;
V_out=g*t*P;// in V
Q=ChargeSensitivity*F;
disp("Total charge developed is : "+string(Q)+" C");
// Formula C=Q/V;
C=Q/V_out;
disp("Capacitance is : "+string(C*10^12)+" miu miu F");

// Note: Answer in the Book is wrong