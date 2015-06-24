//Exa 6.2
clc;
clear;
close;
// given data
g=0.055;// in V-m/N
t=2*10^-3;// in m
P=1.25*10^6;// in N/m^2
epsilon=40.6*10^-12;// in F/m
V_out=g*t*P;
disp("Output voltage is : "+string(V_out)+" V");
// Formula Charge Sensivity=epsilon_o*epsilon_r*g=epsilon*g
ChargeSensivity=epsilon*g;
disp("Charge Sensivity is : "+string(ChargeSensivity)+" C/N");


