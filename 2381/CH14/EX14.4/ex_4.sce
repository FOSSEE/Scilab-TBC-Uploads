//Example 4 //  Capacitance
clc;
clear;
close;
//given data :
L=1;// in H
n=10^6;// in Hz
C=1*10^12/(4*%pi^2*n^2*L);
disp(C,"The capacitance,C(micro-F) = ")
