// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 16")
d=1;//diameter of cylinder in m
l=4;//length of cylinder in m
P1=100*10^3;//initial pressureof hydrogen gas in pa
T1=(27+273);//initial temperature of hydrogen gas in k
P2=125*10^3;//final pressureof hydrogen gas in pa
Cp=14.307;//specific heat at constant pressure in KJ/kg k
Cv=10.183;//specific heat at constant volume in KJ/kg k
disp("here V1=V2")
disp("so P1/T1=P2/T2")
disp("final temperature of hydrogen gas(T2)in k")
disp("=>T2=P2*T1/P1")
T2=P2*T1/P1
disp("now R=(Cp-Cv) in KJ/kg k")
R=Cp-Cv
disp("And volume of cylinder(V1)in m^3")
disp("V1=(%pi*d^2*l)/4")
V1=(%pi*d^2*l)/4
disp("mass of hydrogen gas(m)in kg")
disp("m=(P1*V1)/(1000*R*T1)")
m=(P1*V1)/(1000*R*T1)
disp("now heat supplied(Q)in KJ")
disp("Q=m*Cv*(T2-T1)")
Q=m*Cv*(T2-T1)
