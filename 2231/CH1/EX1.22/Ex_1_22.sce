//Example 1_22
clc;
clear;close;

//Given data: 
l=2/1000;//m
A=12/10000;//m^2
T21=4;//degreeC(T2-T1)
Tc=220;//W/m/degreeC
theta=l/Tc/A;//degreeC/W
Losses=T21/theta;//W
disp(Losses,"Maximum losses in W ");
