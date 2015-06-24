clc;
clear all;
sigma = 5.87e7; // Electrical conductivity of copper 
k = 390; // Thermal conductivity
T = 293; // Temperature in kelvin
L = k/(sigma*T); //Lorrentz number
disp('(W.OHM)/K^2',L,'The lorrentz number is')
