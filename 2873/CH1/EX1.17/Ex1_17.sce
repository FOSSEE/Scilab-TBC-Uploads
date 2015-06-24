// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 17")
V1=2;//volume of first cylinder in m^3
V2=2;//volume of second cylinder in m^3
T=(27+273);//temperature of system in k
m1=20;//mass of air in first vessel in kg
m2=4;//mass of air in second vessel in kg
R=287;//gas constant J/kg k
disp("final total volume(V)in m^3")
disp("V=V1*V2")
V=V1*V2
disp("total mass of air(m)in kg")
disp("m=m1+m2")
m=m1+m2
disp("final pressure of air(P)in kpa")
disp("using perfect gas equation")
disp("P=(m*R*T)/(1000*V)")
P=(m*R*T)/(1000*V)
