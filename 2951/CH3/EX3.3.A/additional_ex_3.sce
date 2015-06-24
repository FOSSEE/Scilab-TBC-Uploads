clc;
clear;
disp("efficiency(n)=(useful power/total power)*100%");
disp("       =total sideband power/(total sideband power+carrier power)*100%");

syms m Pc
N=[((m^2)*Pc/2)/(Pc*(1+(m^2)/2))];
disp("*100% ",N);

disp("----------------------------------------------------------------");
m=0.7 //modulation index


n=[m^2/(m^2+2)]*100;  //efficiency
disp(n,"the percentage of useful power is ");
