clc;
clear;
ENR=31.62; //10^(1.5);
Y=6.30; //10^(0.8)
T=290;//temperature in K
T_h=T*(ENR+1);

T_e=(T_h-Y*(T))/(Y-1);
disp("Equivalent Noise Temperature (in K) is");
disp(T_e);
