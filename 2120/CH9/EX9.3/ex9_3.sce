// Exa 9.3
clc;
clear;
close;
// Given data
H2 = 3055;// in kj per kg
H3 = 2550;// in kj per kg
fie_1 = 7.15;// kj per kg k
fie_2 = 7.57;// kj per kg k
d_fie= fie_2 - fie_1;// in kj per kg k
disp(d_fie,"Change in entropy during throttling process in kJ/kg-K is :");
dH = H2 - H3;// in kj per kg
disp(dH,"Change in enthalpy during isentropic process in kJ/kg is : ");

