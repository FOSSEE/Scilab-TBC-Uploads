//Example 5.1: Capacity of the capacitor
clc;
clear;
close;
//given data :
Ig=0.0001;// in A
T0=3;// in sec
theta0=200;
theta=45;
V=100;// in V
Q=(Ig*T0*theta0)/(theta*2*%pi);
C=(Q/V)*10^6;
disp(C,"Capacity of the capacitor,C(micro-F) = ")
