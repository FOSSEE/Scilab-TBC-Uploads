// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 4")
h=1;//depth of oil tank in m
sg=0.8;//specific gravity of oil
RHOw=1000;//density of water in kg/m^3
g=9.81;//acceleration due to gravity in m/s^2
disp("density of oil(RHOoil)in kg/m^3")
disp("RHOoil=sg*RHOw")
RHOoil=sg*RHOw
disp("gauge pressure(Pg)in kpa")
disp("Pg=RHOoil*g*h/10^3")
Pg=RHOoil*g*h/10^3
