//Example 1_17
clc;
clear;close;

//Given data
Isub=2000;//A
f=50;//Hz
t=10*10^-3;//s
T=2*t;//s//duration of half cycle
I=sqrt(Isub^2*t/T);//A
I2t=I^2*t;//A^2 seconds
disp(I2t,"I^2*t rating in A^2-seconds ");
