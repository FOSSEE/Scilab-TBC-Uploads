// Exa 6.19
clc;
clear;
close;
// Given data
P = 2;//pressure of steam in bar
m = 0.1;//mass of steam in kg
V = 0.080;//volume of steam in m^3
V1 = 0.8872;//volume of 1kg dry saturated steam in m^3
x = V/(m*V1);
disp(x,"Dryness fraction of steam is");
