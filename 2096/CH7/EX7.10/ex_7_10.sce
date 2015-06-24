
//Example 7.10 // strain charge and capacitance
clc;
clear;
close;
//given data :
A=6*6*10^-6; // in m^2
t=1.5*10^-3; // in m
e=12.5*10^-9; // in F/m
F=6; // in N
d=150*10^-12; // in F
E=12*10^6; // in N/m^2
p=F/A;
S=p/E;
g=d/e;
E1=g*t*p;
Q=d*F*10^12;
C=Q/E1;
disp(S,"strain,S = ")
disp(Q,"charge,Q(pC) = ")
disp(C,"capacitance,C(pF) = ")
