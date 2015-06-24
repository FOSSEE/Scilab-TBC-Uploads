// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 15")
P1=100*10^3;//initial pressure of air in pa
V1=5;//initial volume of air in m^3
T1=300;//initial temperature of gas in k
P2=50*10^3;//final pressure of air in pa
V2=5;//final volume of air in m^3
T2=(7+273);//final temperature of air in K
R=287;//gas constant on J/kg k
disp("from perfect gas equation we get")
disp("initial mass of air(m1 in kg)=(P1*V1)/(R*T1)")
m1=(P1*V1)/(R*T1)
disp("final mass of air(m2 in kg)=(P2*V2)/(R*T2)")
m2=(P2*V2)/(R*T2)
disp("mass of air removed(m)in kg")
m=m1-m2
disp("volume of this mass of air(V) at initial states in m^3")
V=m*R*T1/P1
