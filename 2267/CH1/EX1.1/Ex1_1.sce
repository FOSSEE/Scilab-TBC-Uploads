//Part A Chapter 1 Example 1
clc;
clear;
close;
format('v',8);
rho=13550;//kg/m^3
g=9.78;//m/s^2
h=30*10^-2;//m
//Pressure Difference
P_diff=rho*g*h;//Pa
disp("Pressure difference = "+string(P_diff)+" pa");
