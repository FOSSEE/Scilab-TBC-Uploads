// Exa 2.13
format('v',7);clc;clear;close;
// Given data
fullscaledivision = 100;//full scale division in V
n = 200;//number of divisions
scaledivision = fullscaledivision/n;//scale division in V
Resolution = 1/2*scaledivision;// in V
disp(Resolution,"The Resolution of meter in V is");
