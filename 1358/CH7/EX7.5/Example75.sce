// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 5")
disp("Velocities are in m/s, temperature in Kelvin, Angles in degrees.")
disp("Degree of reaction DOR = 0")
disp("DOR = (T2-T3)/(T1-T3)")
disp("Therefore T2 = T3")
disp("From isentropic p–T relation for expansion")
T01 = 1000;
disp("P01/P03 = r")
r = 1.8
T03a = T01/(r^0.249)
disp("Using turbine efficiency")
disp("T03 = T01-etat*(T01-T03a)")
etat = 0.85;
T03 = T01 - etat*(T01-T03a)
disp("In order to find static temperature at turbine outlet, using static and stagnation temperature relation")
C3 = 270;
Cpg = 1.147;
T3 = T03- C3^2 / (2*Cpg*1000)
T2 = T3;
disp("Dynamic Temperature in K is C^2 /2Cpg = Td")
Td = 1000-T2
C2 = (2*Cpg*1000*Td)^0.5//m/s
disp("Since Cpg*DeltaTos = U*(Cw3+Cw2) = U*Cw2 (Cw3=0)")
U = 290;
Cw2 = Cpg*1000*(1000-884)/U//m/s
disp("From velocity triangle")
alpha2 = asin(Cw2/C2)*180/%pi
Ca2 = C2;
beta2 = atan((Cw2-U)/(Ca2*cos(alpha2*%pi/180)))*180/%pi
