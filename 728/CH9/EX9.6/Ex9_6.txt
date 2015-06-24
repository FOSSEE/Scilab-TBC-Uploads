//Caption:Calculate the power gain in dB 
//Exa:9.6
clc;
clear;
close;
R_neg=25;//in ohm
R_load=50;//in ohm
G={[- abs(R_neg)-R_load]/[- abs(R_neg)+R_load]}^2;
disp(G,'Power gain =');