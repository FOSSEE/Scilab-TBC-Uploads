// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 11")
Patm=90*10^3;//atmospheric pressure in pa
RHOw=1000;//density of water in kg/m^3
RHOm=13600;//density of mercury in kg/m^3
RHOo=850;//density of oil in kg/m^3
g=9.81;//acceleration due to ggravity in m/s^2
h1=.15;//height difference between water column in m
h2=.25;//height difference between oil column in m
h3=.4;//height difference between mercury column in m
disp("the pressure of air in air tank can be obtained by equalising pressures at some reference line")
disp("P1+RHOw*g*h1+RHOo*g*h2 = Patm+RHOm*g*h3")
disp("so P1 = Patm+RHOm*g*h3-RHOw*g*h1-RHOo*g*h2")
disp("air pressure(P1)in kpa")
P1=(Patm+RHOm*g*h3-RHOw*g*h1-RHOo*g*h2)/1000
