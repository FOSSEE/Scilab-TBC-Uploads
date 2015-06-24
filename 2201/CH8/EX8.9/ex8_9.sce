// Exa 8.9
clc;
clear;
close;
// Given data
V_P = 5;// in V
I_DSS = -40;// in mA
I_D = -15;// in mA
V_GS = V_P*(sqrt(I_D/I_DSS)-1 );// in V
disp(abs(V_GS),"The gate source voltage in V is");
