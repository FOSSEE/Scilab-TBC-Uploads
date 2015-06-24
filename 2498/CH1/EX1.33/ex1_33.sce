// Exa 1.33
clc;
clear;
close;
format('v',6)
// Given data
epsilon_Ge = 16/(36*%pi*10^11);// in F/cm
d = 2*10^-4;// in cm
A = 1;// in mm^2
A = A * 10^-2;// in cm^2
epsilon_o = epsilon_Ge;// in F/cm
// The space charge capacitance 
C_T = (epsilon_o*A)/d;// in F
C_T = C_T * 10^12;// in pF
disp(C_T,"The space charge capacitance in pF is");
