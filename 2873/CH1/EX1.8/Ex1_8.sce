// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 8")
d=15*10^-2;//diameter of cylinder in m
h=12*10^-2;//manometer height difference in m of mercury
rho=13.6*10^3;//density of mercury in kg/m^3
g=9.81;//acceleration due to gravity in m/s^2
disp("pressure measured by manometer(P) in pa")
disp("p=rho*g*h")
p=rho*g*h
disp("now weight of piston(m*g) = upward thrust by gas(p*%pi*d^2/4)")
disp("mass of piston(m)in kg")
disp("so m=(p*%pi*d^2)/(4*g)")
m=(p*%pi*d^2)/(4*g)
