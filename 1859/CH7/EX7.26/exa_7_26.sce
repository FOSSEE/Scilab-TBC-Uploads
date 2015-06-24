// Exa 7.26
clc;
clear;
close;
// Given data
C1= 251*10^-12;// in F
C2= 50*10^-12;// in F
f1=3;// in MHz
f1=f1*10^6;// in Hz
f2=6;// in MHz
f2=f2*10^6;// in Hz
Cd= (C1-4*C2)/3;// in F
disp(Cd*10^12,"Self Capacitance of the coil in pF")
