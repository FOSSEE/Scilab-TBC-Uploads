// Exa 1.11
clc;
clear;
close;
// Given data
H= 5*10^3;// in amp/meter
N= 50;
l= 10;//in cm
l=l*10^-2;// in m
n=N/l;// in turns/meter
i= H/n;// in amp
disp(i,"Current should be sent through the solenoid in ampere is : ")
