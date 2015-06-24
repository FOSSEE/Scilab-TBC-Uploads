// Exa 6.24
clc;
clear;
close;
// Given data
V_fg =0.1632;// in m^3
T_sup = 200;// in degree C
T_sup = T_sup + 273;// in K
T_sat = 188;// in degree C
T_sat = T_sat + 273;// in K
V_sup = (V_fg*T_sup)/T_sat;// in m^3/kg
V = 0.24;// Capacity of the vessel in m^3
Q = V/V_sup;// in kg
V1 = 0.9774;//volume of 1kg dry saturated steam in m^3
x = V_sup/V1;
disp(x,"Dryness fraction of steam is");
