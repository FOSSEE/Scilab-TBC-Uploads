
//Example 7.8 // voltage output and charge sensitivity
clc;
clear;
close;
//given data :
t=2.5*10^-3; // thick quartz in mm
g=0.055; // in Vm/N
p=1.4; // MN/m^2
e=40.6*10^-12; // in F
E=g*t*p*10^6;
C=e*g*10^12;
disp(E,"voltage output,E(V) = ")
disp(C,"charge sensitivity,C(pC/N) = ")
