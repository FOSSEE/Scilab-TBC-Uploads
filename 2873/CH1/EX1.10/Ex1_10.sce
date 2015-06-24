// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 10")
h=720*10^-3;//barometer reading in m of Hg
Pga=400;//gauge pressure in compartment A in kpa
Pgb=150;//gauge pressure in compartment B in kpa
rho=13.6*10^3;//density of mercury in kg/m^3
g=9.81;//acceleration due to gravity in m/s^2
disp("atmospheric pressure(Patm)in kpa")
Patm=(rho*g*h)/1000
disp("absolute temperature in compartment A(Pa) in kpa")
disp("Paa=Pga+Patm")
Pa=Pga+Patm
disp("absolute temperature in compartment B(Pb) in kpa")
disp("Pb=Pgb+Patm")
Pb=Pgb+Patm
disp("absolute pressure in compartments in A & B=496.06 kpa & 246.06 kpa")
