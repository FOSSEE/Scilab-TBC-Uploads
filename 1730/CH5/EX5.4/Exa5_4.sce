//Exa 5.4
clc;
clear;
close;
// given data
H_L_per_M_Cube_per_C=380;// in W-S
f=50;// unit less
density=7800;// in kg/m^3
V=1/density;// in m^3
// formula Hysteresis loss = Hysteresis loss/m^3/cycle * f * V
P_h=H_L_per_M_Cube_per_C * f * V;
disp("Hysteresis loss is : "+string(P_h)+" W");
