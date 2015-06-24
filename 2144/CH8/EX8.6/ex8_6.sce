// Exa 8.6
clc;
clear;
close;
// Given data
C = 0.83;// in kg
H = 0.05;// in kg
O = 0.02;// in kg
S = 0.002;// in kg
AbyF_min = (11.6 * C) + +(34.8*(H-(O/8))) + (4.35 * S);// in kg
disp(AbyF_min,"The therotical mass of air in kg is");
