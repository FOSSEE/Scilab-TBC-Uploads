//Example 3.3 // mass of copper deposited
clc;
clear;
close;
//given data :
Z=1.044*10^-8;//in kg/C
I=40;//in A
t=1*60*60;//in seconds
m1=Z*I*t;
disp("mass of copper depsoited is "+string(m1)+"kg or "+string((m1*10^3))+"gm")
