//Exa2.26
clc;
clear;
close;
//given data
ElectricalResistivity=2.86*10^-6;//in ohm-cm
sigma=1/ElectricalResistivity;
T=273+20;// in Kelvin (Temperature)
//Formula K/(sigma*T)=2.44*10^-8
disp("Thermal conductivity of Al ")
K=(2.44*10^-8*T*sigma);
disp(K);
