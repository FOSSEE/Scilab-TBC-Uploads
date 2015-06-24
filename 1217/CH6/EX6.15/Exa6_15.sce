// Exa 6.15
clc;
clear;
close;
// given data 
AF=-10;//unitless
Q=20;//unitless
fc=50;//in Hz
disp("To get a roll-off rate of 60 dB/decade, three single op-amp band pass filters have to be cascaded. ");
fc1=fc;//in Hz
fc2=fc;//in Hz
fc3=fc;//in Hz
Q1=0.51*Q;//unitless
Q2=0.51*Q;//unitless
Q3=0.51*Q;//unitless
AF1=-(-AF)^(1/3);//unitless
disp("A single op-amp band passed filter can be design with specifications :");
disp(fc,"Center frequency in Hz is : ");
disp(AF1,"AF1 is :");
disp(Q1,"Q1 is : ");