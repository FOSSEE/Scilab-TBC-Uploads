//Caption:Calculate (i)-input rms voltage,(ii)-output rms voltage, (iii)-power delivered to load 
//Exa:8.2
clc;
clear;
close;
A_v=15;//in dB
P_i=5*10^-3;//in W
R_sh_i=30000;//in ohms
R_sh_o=40000;//in ohms
R_l=20000;//in ohms
V_i=sqrt(P_i*R_sh_i);
V_o=10^((A_v/20))*12.25;
P_out=V_o^2/R_l;
disp(V_i,'Input rms voltage (in volts) =');
disp(V_o,'Output rms voltage (in volts) =');
disp(P_out,'Power delivered to load (in watts) =');