// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 1, Example 1")
//The temprature of two faces of the slabs are T1=40°C & T2=20°C 
//The thickness of the slab(L) is 80mm or .08m
//The thermal conductivity(k)of the material is .20 W/(m*K)
T1=40;
T2=20;
L=.08;
k=.20;
//The steady state heat transfer rate per unit area through the thick slab is given by q=k(T1-T2)/L
disp ("The steady state heat transfer rate per unit area through the thick slab is given by q=k(T1-T2)/L in W/m^2 ")
q=k*(T1-T2)/L
