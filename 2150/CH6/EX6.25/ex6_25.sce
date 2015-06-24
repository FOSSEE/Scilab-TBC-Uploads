// Exa 6.25
clc;
clear;
close;
// Given data
I_DSS = 20;// in mA
V_P = 4;// in V
I_D = I_DSS;// in mA
disp(I_D,"The maximum drain current in mA is");
V_GS = -V_P;// in V
disp(V_GS,"The gate source cut off voltage in volts is");
R_DS = V_P/I_DSS;// in kΩ
disp(R_DS*10^3,"The value of ohmic resistance in Ω is");
