// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 5")
rho=13.6*10^3;//density of mercury in kg/m^3
g=9.81;//acceleration due to gravity in m/s^2
h1=40*10^-2;//difference of height in mercury column in m as shown in figure
h2=76*10^-2;//barometer reading of mercury in m
disp("atmospheric pressure(Patm)in kpa")
disp("Patm=rho*g*h2/10^3")
Patm=rho*g*h2/10^3
disp("pressure due to mercury column at AB(Pab)in kpa")
disp("Pab=rho*g*h1/10^3")
Pab=rho*g*h1/10^3
disp("pressure exerted by gas(Pgas)in kpa")
disp("Pgas=Patm+Pab")
Pgas=Patm+Pab

