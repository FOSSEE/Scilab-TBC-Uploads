// Exa 6.25
clc;
clear;
close;
// Given data
V = 0.6;// in m^3
P2 = 2*10^2;// in kN/m^2
P1 = 10*10^2;// in kN/m^2
m = V/0.1946;// in kg
V_s = 0.8872;// Specific volume of dry saturated steam in m^3
x = 0.1946/V_s;
h_f1 = 505;// in kJ/kg
h_fg1 = 2202;// in kJ/kg
H2 = m*(h_f1 + (x*h_fg1));// in kJ
H1 = m*2776;// in kJ
Q = (H2-H1) - (V*(P2-P1));// in kJ
disp(m,"The mass of steam in the vessel in kg is : ")
disp(x,"The dryness fraction of steam in the vessel is : ")
disp(Q,"The amount o heat transferred in kJ is");
disp("Thus during cooling process there is loss of heat")
