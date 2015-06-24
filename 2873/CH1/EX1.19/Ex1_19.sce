// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 19")
P=17672;//pressure of steam on kpa
T=712;//temperature of steam in k
Pc=22.09;//critical pressure of steam in Mpa
Tc=647.3;//critical temperature of steam in k
R=0.4615;//gas constant for steam in KJ/kg k
disp("1.considering as perfect gas")
disp("specific volume(V)in m^3/kg")
disp("V=R*T/P")
V=R*T/P
disp("2.considering compressibility effects")
disp("reduced pressure(P)in pa")
disp("p=P/(Pc*1000)")
p=P/(Pc*1000)
disp("reduced temperature(t)in k")
disp("t=T/Tc")
t=T/Tc
disp("from generalised compressibility chart,compressibility factor(Z)can be seen for reduced pressure and reduced temperatures of 0.8 and 1.1")
disp("we get Z=0.785")
Z=0.785;//compressibility factor
disp("now actual specific volume(v)in m^3/kg")
disp("v=Z*V")
v=Z*V
