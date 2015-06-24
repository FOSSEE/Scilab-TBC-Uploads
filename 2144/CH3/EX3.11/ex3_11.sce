// Exa 3.11
clc;
clear;
close;
// Given data
V1 = 2.5;// in litre
P1  = 1400;// kN/m^2
P2 = 280;//in kN/m^2
T1 = 1100;// in °C
T1 = T1 + 273;// in K
n = 1.28;
V2 = V1 * (P1/P2)^(1/1.28);// in litres
disp(V2,"Final volume in litres is");
T2 = T1  * ((P2*V2)/(P1*V1));// in K
T2 = T2  - 273;// in degree C
disp(T2,"Final temperature in degree C is");
W = (P1* V1 - P2*V2)/(n-1);// in Joules
disp(W*10^-3,"Work done in kJ is");
