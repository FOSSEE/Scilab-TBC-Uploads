// Exa 6.9
clc;
clear;
close;
format('v',5)
// Given data
I = 40;// in A
V = 230;// in V
N = 600;
t = 46;// in sec
phi= acosd(1);// in °
P = V*I*cosd(phi);// in W
P = P * 10^-3;// in kW
// 1 kWh = 500 revolution 
P = P * 500;// in revolution
T = (3600/t)*60;// in revolution
// Percentage error
PerError = ((T-P)/P)*100;// in %
disp(PerError,"The percentage error in % is");
