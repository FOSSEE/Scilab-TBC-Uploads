// Exa 1.9
clc;
clear;
close;
// Given data
CopperMass = 3;// in kg
WaterMass= 6;// in kg
Spe_heat_copper= 0.394;// in kJ/kg-K
T1 = 90;// in degree C
T2 = 20;// in degree C
del_T = T1-T2;// in degree C
H_C = CopperMass*Spe_heat_copper*del_T;// heat required by copper in kJ
Spe_heat_water= 4.193;// in kJ/kg-K
H_W = WaterMass*Spe_heat_water*del_T;// heat required by water in kJ
H = H_C+H_W;//heat required by vessel and water  in kJ
H = H * 10^-3;// in MJ
disp(H,"Heat required by vessel and water in MJ is");
