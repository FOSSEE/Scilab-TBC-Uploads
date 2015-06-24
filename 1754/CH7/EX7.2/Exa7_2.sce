//Exa 7.2
clc;
clear;
close;
//Given data
H=5*10^3;//in Ampere-turns/m
l=10;//in cm
l=l*10^-2;//in meter
N=50;//no. of turns
n=N/l;//no. of turns per unit length
//Formula : H=n*i
i=H/n;//in Ampere
disp(i,"Current should be sent through solenoid in Ampere : ");