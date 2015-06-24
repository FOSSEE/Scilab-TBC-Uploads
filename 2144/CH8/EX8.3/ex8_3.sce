// Exa 8.3
clc;
clear;
close;
// Given data
mw = 2.5;//mass of water in kg
mc= 0.744;//water equivalen of apparatus in kg
CoalMass = 1.01*10^-3;// in kg
T_r = 2.59;//temp. rise in degree C
C_c = 0.016;// Cooling correction in degree C
theta = T_r +C_c;//corrected temp. rise in degree C
Cp = 4.1868;// in kJ/kg-K
m = mw+mc;// in kg
Qw = m * Cp*theta;//heat received by water in kJ
C = (Qw/CoalMass);// in kJ/kg
disp(C,"Calorific value of the fuel in kJ/kg is");
