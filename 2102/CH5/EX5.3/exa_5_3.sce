// Exa 5.3
clc;
clear;
close;
// Given data
epsilon_Ge= 16/(36*%pi*10^-11);// in f/C
A=10^-12;
d=2*10^-4;// in cm
// C_T= epsilon_0*A/d= epsilon_Ge*A/d
C_T= epsilon_Ge*A/d;//in pF
disp(C_T,"The space charge capacitance in pF")
