// Exa 6.4
clc;
clear;
close;
// Given data
L = 693.3;// Liquid heat in kJ/kg
L1 = 125.7;// Liquid heat of feed water in kJ/kg
m = 2;// mass of water in kg
Q = m * (L-L1);// in kJ
disp(Q,"Heat required to raise temperature in kJ is");
disp("The water is still liquid at the end of the heat supply")
