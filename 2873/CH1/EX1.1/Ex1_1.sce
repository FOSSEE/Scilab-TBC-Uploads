// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 1")
h=30*10^-2;//manometer deflection of mercury in m
g=9.78;//acceleration due to gravity in m/s^2
rho=13550;//density of mercury at room temperature in kg/m^3
disp("pressure difference(p)in pa")
disp("p=rho*g*h")
p=rho*g*h
