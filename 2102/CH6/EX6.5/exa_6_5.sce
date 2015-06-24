// Exa 6.5
clc;
clear;
close;
// Given data
delta_I_D= 1.9-1.0;// in mA
delta_V_GS= 3.3-3.0;// in V
gm= delta_I_D/delta_V_GS;//in mA/V
disp("The value of transconductance is "+string(gm)+" mA/V or "+string(gm*10^3)+" HmV10s")
