// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 1")
disp("From isentropic p–T relation for expansion process")
disp("T02a/T01 = (P02/P01)^((gam-1)/gam)")
P02 = 1.03;
P01 = 5.2;
T01 = 1000;
gam = 1.33;
T02a = T01*(P02/P01)^((gam-1)/gam)
disp("Using isentropic efficiency of turbine")
etat = 0.88;
T02 = T01 - etat*(T01-T02a)//K
disp("Using steady-flow energy equation")
disp("1/2 * (C2^2 - C1^2) = Cp(T01 - T02)")
Cpg = 1147;
C1 = 140;
C2 = (2*Cpg*(T01-T02) + C1^2)^0.5//m/s
disp("From velocity triangle, velocity of whirl at rotor inlet in m/s")
Cw2 = C2*sin(57*%pi/180)
disp("Turbine work output is given by in kW")
m = 28;
Wt = m*Cpg*(T01-T02)/1000
