//Caption: step size,noise power
//Example 4.34
//page no 204
//Find  step size,noise power
clear;
clc;
fs=64*10^3;
fm=3500;
A=1;
del=(2*%pi*fm*A)/fs;//step size
disp("Volts",del,"i)step size");
Nq=(del^2/3)*(fm/fs);//Granular noise power
disp("W",Nq,"ii)Nq=");
