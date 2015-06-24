clear;
clc;
close;
disp("Example 11.1")

Ts=470000 //in lb
Tv=375000 //in lb
A2=(Ts-Tv)/(14.7*144)
D=(4*A2/%pi)^(1/2)
disp(D,"Diameter of the SSME nozzle exit area :")