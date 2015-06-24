// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 2")
d=30*10^-2;//diameter of cylindrical vessel in m
h=76*10^-2;//atmospheric pressure in m of mercury
g=9.78;//acceleration due to gravity in m/s^2
rho=13550;//density of mercury at room temperature in kg/m^3
disp("effort required for lifting the lid(E)in N")
disp("E=(rho*g*h)*(3.14*d^2)/4")
E=(rho*g*h)*(3.14*d^2)/4
